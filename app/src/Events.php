<?php
namespace Event\Component;

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

class Events extends Page
{
    private static $has_many = [
        'AddEvent' => AddEvent::class,
        'Client' => Client::class,
        'AddNewGetInvolved' => AddNewGetInvolved::class
    ];
    private static $allowed_children = [
        AddEvent::class,
        Client::class,
        AddNewGetInvolved::class
    ];
    private static $many_many = [
        'HomePhoto' => Image::class,
        'Gallary' => Image::class
    ];
    private static $has_one = [
        'About' => Image::class,
    ];
    //...
    private static $owns = [
        'HomePhoto',
        'Gallary',
        'About'
    ];

    private static $db = [
      "Email" => "Varchar(255)",
      "Number" => "Varchar(255)",
      "Description" => "Text"
    ];

    private static $table_name = 'EventGallarypage';

    public function getCMSFields()
    {
        Requirements::css('silverstripe/userforms:client/dist/styles/userforms-cms.css');

        $this->beforeUpdateCMSFields(function ($fields) {

            //For Display Events


            $parentID = (!empty($this->ID)) ? (int) $this->ID : 0;

            // get a list of all field names and values used for print and export CSV views of the GridField below.
            $columnSQL = <<<SQL
SELECT  "ID", "EventName", "StartDate", "EndDate", "place", "Time" FROM "Eventspage";
SQL;
            // Sanitise periods in title
            $columns = array();

            foreach (DB::query($columnSQL) as $name => $title) {
                $columns[$name] = $title;
            }

            $config = GridFieldConfig::create();
            $config->addComponent(new GridFieldToolbarHeader());
            $config->addComponent($sort = new GridFieldSortableHeader());
            $config->addComponent($filter = new UserFormsGridFieldFilterHeader());
            $config->addComponent(new GridFieldDataColumns());
            $config->addComponent(new GridFieldEditButton());
            $config->addComponent(new GridFieldDeleteAction());
            $config->addComponent(new GridFieldPageCount('toolbar-header-right'));
            $config->addComponent($pagination = new GridFieldPaginator(25));
            $config->addComponent(new GridFieldDetailForm());
            $config->addComponent(new GridFieldButtonRow('after'));

            // show user form items in the summary tab
            $summaryarray = array(
                'ID' => 'ID',
                'EventName' => 'Event Name',
                'StartDate' => 'Start Date',
                'EndDate' => 'End Date',
                'Race' => 'Race',
                'StartTime' => 'Start Time',
                'EndTime' => 'End Time'
            );

            foreach (EditableFormField::get()->filter(array('ParentID' => $parentID)) as $eff) {
                if ($eff->ShowInSummary) {
                    $summaryarray[$eff->Name] = $eff->Title ?: $eff->Name;
                }
            }
            
            $config->getComponentByType(GridFieldDataColumns::class)->setDisplayFields($summaryarray);

            
            /**
             * Support for {@link https://github.com/colymba/GridFieldBulkEditingTools}
             */
            if (class_exists(BulkManager::class)) {
                $config->addComponent(new BulkManager);
            }

            $sort->setThrowExceptionOnBadDataType(false);
            $filter->setThrowExceptionOnBadDataType(false);
            $pagination->setThrowExceptionOnBadDataType(false);

            $filter->setColumns($columns);

            $submissions = GridField::create(
                'Events',
                '',
                AddEvent::get(),
                $config
            );

            $fields->addFieldToTab('Root.Events', $submissions);

             $parentId = (!empty($this->ID)) ? (int) $this->ID : 0;

            // get a list of all field names and values used for print and export CSV views of the GridField below.
            $columnSQL1 = <<<SQL
SELECT  "ID", "EventName", "StartDate", "EndDate", "place", "Time" FROM "Eventspage";
SQL;
            // Sanitise periods in title
            $columnc = array();

            foreach (DB::query($columnSQL1) as $name => $title) {
                $columnc[$name] = $title;
            }

            $configc = GridFieldConfig::create();
            $configc->addComponent(new GridFieldToolbarHeader());
            $configc->addComponent($sort = new GridFieldSortableHeader());
            $configc->addComponent($filter = new UserFormsGridFieldFilterHeader());
            $configc->addComponent(new GridFieldDataColumns());
            $configc->addComponent(new GridFieldEditButton());
            $configc->addComponent(new GridFieldDeleteAction());
            $configc->addComponent(new GridFieldPageCount('toolbar-header-right'));
            $configc->addComponent($pagination = new GridFieldPaginator(25));
            $configc->addComponent(new GridFieldDetailForm());
            $configc->addComponent(new GridFieldButtonRow('after'));

            // show user form items in the summary tab
            $summaryarrayClient = array(
                'ID' => 'ID',
                'Name' => 'Client Name',
                'City' => 'City'
            );

            foreach (EditableFormField::get()->filter(array('ParentID' => $parentId)) as $eff) {
                if ($eff->ShowInSummary) {
                    $summaryarrayClient[$eff->Name] = $eff->Title ?: $eff->Name;
                }
            }
            
            $configc->getComponentByType(GridFieldDataColumns::class)->setDisplayFields($summaryarrayClient);

            
            /**
             * Support for {@link https://github.com/colymba/GridFieldBulkEditingTools}
             */
            if (class_exists(BulkManager::class)) {
                $configc->addComponent(new BulkManager);
            }

            $sort->setThrowExceptionOnBadDataType(false);
            $filter->setThrowExceptionOnBadDataType(false);
            $pagination->setThrowExceptionOnBadDataType(false);

            $filter->setColumns($columnc);

            $clientsubmissions = GridField::create(
                'Clients',
                '',
                Client::get(),
                $configc
            );
            
            $fields->addFieldToTab('Root.Client', $clientsubmissions);
            $fields->addFieldToTab('Root.Events', $submissions);
            $fields->removeFieldFromTab('Root.Main',"Content");
            $fields->addFieldToTab('Root.Gallary', UploadField::create('Gallary'));
            $fields->addFieldToTab('Root.Main', UploadField::create('HomePhoto'));
            $fields->addFieldToTab('Root.About', UploadField::create('About'));
            $fields->addFieldToTab('Root.About',new EmailField('Email','Email'));
            $fields->addFieldToTab('Root.About',new NumericField('Number','Call'));
            $fields->addFieldToTab('Root.About',new TextareaField ('Description','Description'));

        });

        $fields = parent::getCMSFields();


        return $fields;
    }
}