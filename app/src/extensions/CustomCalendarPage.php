<?php
use SilverStripe\Forms\FieldList;
use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\File;

class CustomCalendarPage extends DataExtension 
{
    
    private static $has_one = [
        'CalendarHomeImage' => Image::class,
    ];
    
    private static $owns = [
        'CalendarHomeImage'
    ];
    public function updateCMSFields(FieldList $fields) 
    {
        $fields->removeFieldFromTab('Root.Main',"Content");
        $fields->addFieldToTab('Root.Main', UploadField::create('CalendarHomeImage'));
    }

}