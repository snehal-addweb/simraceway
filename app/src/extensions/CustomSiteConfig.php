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
        'About' => Image::class
    ];
    private static $owns = [
        'About'
    ];
    public function updateCMSFields(FieldList $fields) 
    {
        $fields->addFieldToTab('Root.About', UploadField::create('About'));
    }

}