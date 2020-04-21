///isInView()
{
    if ((x<view_xview) || (x > view_xview+view_wview) || (y<view_yview) || (y > view_yview+view_hview))
    {
        return false;
    }
    return true;
}
