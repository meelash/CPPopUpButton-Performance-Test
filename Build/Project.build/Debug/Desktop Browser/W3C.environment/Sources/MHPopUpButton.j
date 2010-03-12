I;18;AppKit/CPControl.jc;2299;

{var the_class = objj_allocateClassPair(CPControl, "MHPopUpButton"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_DOMSelectElement")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $MHPopUpButton__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPControl") }, "initWithFrame:", aFrame))
    {

        _DOMSelectElement = document.createElement("select");
        _DOMSelectElement.style.position = "absolute";
        _DOMSelectElement.style.left = "0px";
        _DOMSelectElement.style.top = "0px";

        _DOMElement.appendChild(_DOMSelectElement);

    }
    return self;
}
},["id","CPRect"]), new objj_method(sel_getUid("removeAllItems"), function $MHPopUpButton__removeAllItems(self, _cmd)
{ with(self)
{
    var numberOfItems=_DOMSelectElement.options.length;
    for (var i=0; i<numberOfItems; i++)
    {
        _DOMSelectElement.options.remove(_DOMSelectElement.options[0]);
    }
}
},["void"]), new objj_method(sel_getUid("addItemsWithTitles:"), function $MHPopUpButton__addItemsWithTitles_(self, _cmd, titles)
{ with(self)
{
    for (var i=0; i<objj_msgSend(titles, "count"); i++)
    {
        var DOMoption = document.createElement("option");
        DOMoption.innerHTML = titles[i];
        _DOMSelectElement.options.add(DOMoption);
    }

}
},["void","CPArray"]), new objj_method(sel_getUid("selectItemAtIndex:"), function $MHPopUpButton__selectItemAtIndex_(self, _cmd, anIndex)
{ with(self)
{
    if (_DOMSelectElement.options.selectedIndex == anIndex)
        return;

    _DOMSelectElement.options.selectedIndex=anIndex;
    objj_msgSend(self, "sendAction:to:", objj_msgSend(self, "action"), objj_msgSend(self, "target"));
}
},["void","int"]), new objj_method(sel_getUid("indexOfSelectedItem"), function $MHPopUpButton__indexOfSelectedItem(self, _cmd)
{ with(self)
{
    return _DOMSelectElement.options.selectedIndex;
}
},["int"]), new objj_method(sel_getUid("indexOfLastItem"), function $MHPopUpButton__indexOfLastItem(self, _cmd)
{ with(self)
{
    return _DOMSelectElement.options.length;
}
},["int"])]);
}

