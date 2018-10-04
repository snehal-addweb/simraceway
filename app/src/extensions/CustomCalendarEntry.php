<?php
use SilverStripe\Forms\FieldList;
use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\File;

class CustomCalendarEntry extends DataExtension 
{
    private static $db = [
      "EndDate" => "Date",
      "EndTime" => "Text",
      "Status" => "Varchar(255)",
      "Race" => "Varchar(255)",
    ];
    public function updateCMSFields(FieldList $fields) 
    {
        $fields->renameField('Title', 'Event Title');
        $fields->renameField('Date', 'Start Date');
        $fields->addFieldToTab('Root.Main', new DateField('EndDate','End Date'));
        $fields->renameField('Time', 'Start Time');
        $fields->addFieldToTab('Root.Main', new TextField('EndTime','End Time'));
        $fields->addFieldToTab('Root.Main', new TextField('Status','Status'));
        $fields->addFieldToTab('Root.Main', new TextField('Race','Race'));
        $fields->removeFieldFromTab("Root.Main", "Description");

    }

}