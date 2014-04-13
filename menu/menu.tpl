<nav>
    <div>
	<ul class="menu">
<?php 
foreach ($menu->data as $v) 
{
    if ($v['submenu'] == 0 && $v['parentmenu'] == 0)
    {
?>
            <li>
                <a href="<?=$v['link']?>"><?=$v['name']?></a>
            </li>
<?php
    }
    elseif ($v['submenu'] == 1 && $v['parentmenu'] == 0)
    {
?>    
            <li>
                <a href="<?=$v['link']?>"><?=$v['name']?></a>
                <ul>
                    <li>
<?php
        foreach ($menu->data as $x)
        {
            if ($x['parentmenu'] == $v['id'])
            {
?>
                        <a href="<?=$x['link']?>"><?=$x['name']?></a>
<?php
            }
        }
?>
                    </li>
                </ul>
            </li>
<?php
    }
}
?>
	</ul>
    </div> 
</nav>