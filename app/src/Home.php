<?php
namespace Home\Component;

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
use PurpleSpider\BasicCalendar\CalendarEntry;
use PurpleSpider\BasicCalendar\CalendarPage;

class Home extends Page
{
    private static $has_many = [
        'Client' => Client::class,
        'AddNewGetInvolved' => AddNewGetInvolved::class,
        'Series' => Series::class
    ];
    private static $allowed_children = [
        Client::class,
        AddNewGetInvolved::class,
        Series::class
    ];
    private static $many_many = [
        'HomePhoto' => Image::class,
        'Gallary' => Image::class,
    ];
    private static $has_one = [
        'About' => Image::class,
        'NewsImage' => Image::class,
    ];
    //...
    private static $owns = [
        'HomePhoto',
        'Gallary',
        'About',
        'NewsImage'
    ];

    private static $db = [
      "Email" => "Varchar(255)",
      "Number" => "Varchar(255)",
      "Description" => "Text",
      "NewsTitle" => "Varchar(255)"
    ];

    private static $table_name = 'EventGallarypage';

    public function getCMSFields()
    {
        Requirements::css('silverstripe/userforms:client/dist/styles/userforms-cms.css');

        $this->beforeUpdateCMSFields(function ($fields) {


             $parentId = (!empty($this->ID)) ? (int) $this->ID : 0;

            // get a list of all field names and values used for print and export CSV views of the GridField below.
            $columnSQL1 = <<<SQL
SELECT  "ID", "Name", "City" FROM "Client";
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
            $fields->removeFieldFromTab('Root.Main',"Content");
            $fields->addFieldToTab('Root.Gallary', UploadField::create('Gallary'));
            $fields->addFieldToTab('Root.Main', UploadField::create('HomePhoto'));
            $fields->addFieldToTab('Root.About', UploadField::create('About'));
            $fields->addFieldToTab('Root.About',new EmailField('Email','Email'));
            $fields->addFieldToTab('Root.About',new TextField('Number','Call'));
            $fields->addFieldToTab('Root.About',new TextareaField ('Description','Description'));
            $fields->addFieldToTab('Root.News',new TextField('NewsTitle','News Title'));
            $fields->addFieldToTab('Root.News', UploadField::create('NewsImage'));

        });

        $fields = parent::getCMSFields();


        return $fields;
    }
    public function getEvents()
    {
        return CalendarPage::get();
    }

}