<?php
namespace CarsAndClasses\Component;

use Page;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use Colymba\BulkManager\BulkManager;
use SilverStripe\Core\Injector\Injector;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\TimeField;
use SilverStripe\Forms\ButtonField;
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

class AddCarsAndClasses extends Page
{
    private static $db = [
      "Name" => "Varchar(255)",
      "Stastics" => "Varchar(255)",
      "Power" => "Varchar(255)",
      "Weight" => "Varchar(255)",
      "Description" => "Text"
    ];

    private static $can_be_root = false;

    private static $table_name = 'AddCarsAndClasses';

    
     private static $many_many = [
        'Photo' => Image::class,
    ];  
    //...
    private static $owns = [
        'Photo'
    ];
    public function getCMSFields()
    {
        Requirements::css('silverstripe/userforms:client/dist/styles/userforms-cms.css');

        $this->beforeUpdateCMSFields(function ($fields) {
            $fields->removeFieldFromTab('Root.Main',"Content");
            $fields->addFieldToTab('Root.AddCarsAndClasses',new TextField('Name','Title'));
            $fields->addFieldToTab('Root.AddCarsAndClasses',new TextareaField('Description','Description'));
            $fields->addFieldToTab('Root.AddCarsAndClasses',new TextField('Stastics','Statistics'));
            $fields->addFieldToTab('Root.AddCarsAndClasses',new TextField('Power','Power'));
            $fields->addFieldToTab('Root.AddCarsAndClasses',new TextField('Weight','Weight'));
            $fields->addFieldToTab('Root.AddCarsAndClasses',new UploadField('Photo'));

        });

        $fields = parent::getCMSFields();


        return $fields;
    }
}