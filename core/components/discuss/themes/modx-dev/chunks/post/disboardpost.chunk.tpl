<div class="row h-group dis-category-[[+category]] [[+class]] [[+locked:is=`1`:then=`locked`:else=`unlocked`]] [[+unreadCls]]">
   <a class="h-group" href="[[+url]]">
        <div class="f1-f7 m-title">
            <div class="wrap">
                [[+sticky:if=`[[+sticky]]`:eq=`1`:then=`<span class="sticky tag">sticky</span>`]]
                [[+answered:notempty=`<span class="answered tag">solved</span>`]]



                New testing [[+answered]]

                [[+answered:is=`1`:then=`<span class="tag solved">Solved</span>`:default=``]]
                [[+answered:is=`false`:then=`<span class="tag solved">Not Solved</span>`]]



                <strong>[[+sticky:if=`[[+sticky]]`:eq=`1`:then=`[[+title]]`:else=`[[+title]]`]]</strong>
                [[- [[+thread_pagination]] ]]
            </div>
        </div>
        <div class="f8">[[+views]]</div>
        <div class="f9">[[+replies]]</div>
        <div class="f10-f12">
            <p class="posted-date">[[+createdon:ago]]</p>
            <p class="posted-by">[[+first_post_username]]</p>
        </div>
    </a>
</div>
