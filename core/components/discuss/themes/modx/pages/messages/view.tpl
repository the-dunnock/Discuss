

[[<h4 class="right">[[%discuss.participants]]: [[+participants_usernames]]</h4>]]

<div class="dis-threads">

	<h1 class="Category">[[%discuss.message? &namespace=`discuss` &topic=`post`]]: [[+title]]</h1>

	<ol class="dis-board-thread">
		[[+posts]]
	</ol>

    <div class="dis-pagination"><ul>[[+pagination]]</ul></div>

    [[+quick_reply_form]]
</div>









			</div><!-- Close Content From Wrapper -->
[[+bottom]]

<div id="Panel">
				<hr class="line" />
    <div class="PanelBox">
        [[!+discuss.user.id:notempty=`<div class="Box GuestBox">
            <h4>Actions &amp; Info</h4>
			<p>[[+actionbuttons]]</p>
			[[+belowThreads]]
			<p>[[+readers]]</p>
			<p>[[+moderators]]</p>
	    </div>`]]

		[[$actions-sidebar]]


    </div>