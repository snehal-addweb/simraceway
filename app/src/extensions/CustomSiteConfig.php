<?php
use SilverStripe\Forms\FieldList;
use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Assets\Image;
use SilverStripe\Assets\File;
use SilverStripe\AssetAdmin\Forms\UploadField;

class CustomSiteConfig extends DataExtension 
{
    private static $has_one = [
        'Photo' => Image::class
    ];
    private static $owns = [
        'Photo'
    ];
    public function updateCMSFields(FieldList $fields) 
    {
        $fields->removeFieldFromTab('Root.Main',"Content");
        $fields->addFieldToTab('Root.Main', UploadField::create('Photo'));
    }

}