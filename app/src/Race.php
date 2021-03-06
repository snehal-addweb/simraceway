<?php
namespace StandingAndResult\Component;

use Page;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use Colymba\BulkManager\BulkManager;
use SilverStripe\Core\Injector\Injector;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\TimeField;
use SilverStripe\Forms\ButtonField;
use SilverStripe\Forms\NumericField;
use SilverStripe\Forms\DatetimeField;
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

class Race extends Page
{
    private static $db = [
      "StartDate" => "Date",
      "EndDate" => "Date",
      "StartTime" => "Text",
      "EndTime" => "Text",
      "Race" => "Text",
      "Name" => "Text",
    ];

    private static $can_be_root = false;

    private static $table_name = 'Race';

    
    private static $has_one = [
        'Photos' => Image::class,
    ];  

    private static $owns = [
        'Photos'
    ];

    public function getCMSFields()
    {
        Requirements::css('silverstripe/userforms:client/dist/styles/userforms-cms.css');

        $this->beforeUpdateCMSFields(function ($fields) {
            $fields->addFieldToTab('Root.Race',new TextField('Name','Race Name'));
            $fields->addFieldToTab('Root.Race',new TextField('Race','Race number'));
            $fields->addFieldToTab('Root.Race',new DateField('StartDate','Start Date'));
            $fields->addFieldToTab('Root.Race',new DateField('EndDate','End Date'));
            $fields->addFieldToTab('Root.Race',new TextField('StartTime','Start Time'));
            $fields->addFieldToTab('Root.Race',new TextField('EndTime','End Time'));
            $fields->addFieldToTab('Root.Race',new UploadField('Photos'));
        });

        $fields = parent::getCMSFields();


        return $fields;
    }
    
    public function IsDateOk($StartDate)
    {
        $today = date("Y-m-d");
        return (strtotime($StartDate) > strtotime($today));
    }
}