<?php
namespace Calendar\Component;

use Page;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\File;
use Colymba\BulkManager\BulkManager;
use SilverStripe\Core\Injector\Injector;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\TimeField;
use SilverStripe\Forms\EmailField;
use SilverStripe\Forms\ButtonField;
use SilverStripe\Forms\NumericField;
use SilverStripe\Forms\CompositeField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldAddNewButton;
use SilverStripe\Forms\GridField\GridFieldButtonRow;
use SilverStripe\Forms\GridField\GridFieldConfig;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Forms\GridField\GridFieldDataColumns;
use SilverStripe\Forms\GridField\GridFieldDeleteAction;
use SilverStripe\Forms\GridField\GridFieldDetailForm;
use SilverStripe\Forms\GridField\GridFieldEditButton;
use SilverStripe\Forms\GridField\GridFieldExportButton;
use SilverStripe\Forms\GridField\GridFieldPageCount;
use SilverStripe\Forms\GridField\GridFieldPaginator;
use SilverStripe\Forms\GridField\GridFieldPrintButton;
use SilverStripe\Forms\GridField\GridFieldSortableHeader;
use SilverStripe\Forms\GridField\GridFieldToolbarHeader;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\LabelField;
use SilverStripe\Forms\LiteralField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\ORM\ArrayList;
use SilverStripe\ORM\DB;
use SilverStripe\UserForms\Extension\UserFormFieldEditorExtension;
use SilverStripe\UserForms\Extension\UserFormValidator;
use SilverStripe\UserForms\Form\UserFormsGridFieldFilterHeader;
use SilverStripe\UserForms\Model\Recipient\EmailRecipient;
use SilverStripe\UserForms\Model\Recipient\UserFormRecipientItemRequest;
use SilverStripe\UserForms\Model\Submission\SubmittedForm;
use SilverStripe\UserForms\Model\EditableFormField;
use SilverStripe\Security\Group;
use SilverStripe\Security\Member;
use SilverStripe\Security\Permission;
use SilverStripe\Security\PermissionProvider;
use SilverStripe\Security\Security;
use SilverStripe\View\Requirements;
use SilverStripe\Core\Config\Configurable;
use Event\Component\AddEvent;
use SilverStripe\CMS\Model\SiteTree;

class Calendar extends Page
{
    
    private static $has_one = [
        'Photo' => Image::class,
    ];
    //...
    private static $owns = [
        'Photo',
    ];
    private static $allowed_actions = array(
        'full',
        'eventsdata'
    );
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->removeFieldFromTab('Root.Main',"Content");
        $fields->addFieldToTab('Root.Main', UploadField::create('Photo'));
        return $fields;
    }

    public function getEvent() {
        return AddEvent::get();
    }

    public function onAfterInit(){
        $request = $this->owner->getRequest();
        if(!$request->param('Action') && $this->owner->data()->UseFullCalendar){
            return $this->owner->redirect($this->owner->Link('full'));
        }
    }
  /**
   * @return full calendar view
   */
    public function full() {
        $basicAgenda = 'agenda';
        switch ($this->owner->data()->DefaultView) {
            case 'today':
              $view = $basicAgenda . 'Day';
            case 'week':
              $view = $basicAgenda . 'Week';
              break;
            default:
              $view = 'month';
              break;
        }
    
        return $this->owner->customise(array(
            'FullCalendarView' => $view
          ));
    }
  /**
   * Handles returning the JSON events data for a time range.
   *
   * @param  SS_HTTPRequest $request
   * @return SS_HTTPResponse
   */
    public function eventsdata($request) {
        
        $start = $request->getVar('start');
        $end   = $request->getVar('end');
        $events = $this->owner->data()->getEventList(
          sfDate::getInstance($start)->date(),
          sfDate::getInstance($end)->date(),
          null,
          null
        );
        $eventsArray = array();
        if ($events) foreach ($events as $event) {
            $eventArray = array(
              'id'        => $event->ID,
              'title'     => $event->Event()->Title,
              'start'     => $event->MicroformatStart(),
              'startTime' => $event->getFormattedStartTime(),
              'endTime'   => $event->getFormattedEndTime(),
              'allDay'    => (bool) $event->AllDay,
              'url'       => $event->Link(),
            );
        
            //We work out the end data manually here as all day events can run over multiple days but CalendarDateTime,
            //always returns Start + 24 hours when AllDay is true.
            $date = $event->EndDate ? $event->EndDate : $event->StartDate;
            /*
             * @TODO Test to see if this readable snippet is 1:1 with the below
             * if($event->EndTime) {
             *  $time = $event->EndTime;
             * } elseif($event->StartTime) {
             *  $time = $event->StartTime;
             * } else {
             *  $time = "00:00:00";
             * }
             */
            $time = $event->EndTime && $event->StartTime ? $event->EndTime : (!$event->EndTime && $event->StartTime ? $event->StartTime : "00:00:00");
            $eventArray['end'] = CalendarUtil::microformat($date, $time, Config::inst()->get('CalendarDateTime', 'offset'));
            
            $eventsArray[] = $eventArray;
        }
        $response = new SS_HTTPResponse(Convert::array2json($eventsArray));
        $response->addHeader('Content-Type', 'application/json');
    
        return $response;
    }

}