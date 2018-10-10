<?php
use SilverStripe\Forms\FieldList;
use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;

class CustomSiteConfig extends DataExtension 
{

    private static $db = [
        'About' => 'Text',
        'CopyRight' => 'Text',
        'Address' => 'Text',
        'PhoneNumber1' => 'Text',
        'PhoneNumber2' => 'Text',
        'Email' => 'Text',
        'LinkedIn' => 'Text',
        'Facebook' => 'Text',
        'Twitter' => 'Text',
    ];

    public function updateCMSFields(FieldList $fields) 
    {
        $fields->addFieldToTab('Root.Main', TextareaField::create('About', 'About'));
        $fields->addFieldToTab('Root.Main', TextField::create('CopyRight','CopyRight'));
        $fields->addFieldToTab('Root.Main', TextareaField::create('Address','Address'));
        $fields->addFieldToTab('Root.Main', TextField::create('PhoneNumber1','PhoneNumber1'));
        $fields->addFieldToTab('Root.Main', TextField::create('PhoneNumber2','PhoneNumber2'));
        $fields->addFieldToTab('Root.Main', TextField::create('Email','Email'));
        $fields->addFieldToTab('Root.Main', TextField::create('LinkedIn','Linkedin'));
        $fields->addFieldToTab('Root.Main', TextField::create('Facebook','Facebook'));
        $fields->addFieldToTab('Root.Main', TextField::create('Twitter','Twitter'));
    }

}