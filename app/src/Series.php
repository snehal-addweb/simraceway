<?php
namespace Home\Component;

use Page;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use Colymba\BulkManager\BulkManager;
use SilverStripe\Core\Injector\Injector;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\TimeField;
use SilverStripe\Forms\ButtonField;
use SilverStripe\Forms\DropdownField;
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

class Series extends Page
{
    private static $db = [
      "Year" => "Varchar(255)",
      "Series" => "Varchar(255)"
    ];

    private static $can_be_root = false;

    private static $table_name = 'Series';

    
     private static $has_one = [
        'SeriesPhoto' => Image::class,
    ];  
    //...
    private static $owns = [
        'SeriesPhoto'
    ];
    public function getCMSFields()
    {
        Requirements::css('silverstripe/userforms:client/dist/styles/userforms-cms.css');
        // $year = array("2010" => "2010", "2011" => "2011", "2012"=> "2012");
        $today = date("Y");
        // for ($i=1950; $i<= $today ; $i++) { 
        //     $year[$i] = $i;
        // }
        
        $this->beforeUpdateCMSFields(function ($fields) {

            $fields->removeFieldFromTab('Root.Main',"Content");
            $fields->addFieldToTab('Root.Main',  DropdownField::create('Year', 'Year',array("2010" => "2010", "2011" => "2011", "2012"=> "2012", "2013"=> "2013", "2014"=> "2014", "2015"=> "2015", "2016"=> "2016", "2017"=> "2017", "2018"=> "2018" ))->setEmptyString('Select one'));
            $fields->addFieldToTab('Root.Main',new TextField('Series','Series Title'));
            $fields->addFieldToTab('Root.Main', UploadField::create('SeriesPhoto'));

        });

        $fields = parent::getCMSFields();


        return $fields;
    }
}