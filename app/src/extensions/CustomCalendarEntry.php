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
      "EndTime" => "Text",
      "Status" => "Varchar(255)",
    ];
    public function updateCMSFields(FieldList $fields) 
    {
        $fields->renameField('Date', 'Start Date');
        $fields->renameField('Time', 'Start Time');
        $fields->addFieldToTab('Root.Main', new TextField('EndTime','End Time'));
        $fields->addFieldToTab('Root.Main', new TextField('Status','Status'));
        $fields->removeFieldFromTab("Root.Main", "Description");
        $fields->removeFieldFromTab("Root.Main", "Image");

    }

}