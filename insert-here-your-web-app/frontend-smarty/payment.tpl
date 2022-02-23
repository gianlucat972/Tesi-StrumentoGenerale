{extends file='checkout/_partials/steps/checkout-step.tpl'}
{block name='step_content'}
  <div class="payment-options" x678149064300-x-test-tpl-1>
    {foreach from=$payment_options item="module_options"}
      {foreach from=$module_options item="option"}
        <div x678149064300-x-test-hook-2>
          <div id="{$option.id}-container" class="payment-option clearfix" x678149064300-x-test-hook-3>
            {* This is the way an option should be selected when Javascript is enabled *}
            <span class="custom-radio pull-xs-left" x678149064300-x-test-hook-4>
              <input class="ps-shown-by-j"s id="{$option.id}" type="radio" name="payment-option" required {if $selected_payment_option == $option.id} checked {/if} x678149064300-x-test-hook-5>
              <span x678149064300-x-test-hook-6></span>
            </span>
            {* This is the way an option should be selected when Javascript is disabled *}
            <form method="GET" class="ps-hidden-by-js" x678149064300-x-test-hook-7>
              {if $option.id === $selected_payment_option}
                {l s='Selected'}
              {else}
                <button class="ps-hidden-by-js" type="submit" name="select_payment_option" value="{$option.id}" x678149064300-x-test-hook-8>
                  {l s='Choose'}
                </button>
              {/if}
            </form>

            <label for="{$option.id}" x678149064300-x-test-hook-9>
              <span x678149064300-x-test-hook-10>{$option.call_to_action_text}</span>
              {if $option.logo}
                <img src="{$option.logo}" x678149064300-x-test-hook-11>
              {/if}
            </label>

          </div>
        </div>

        {if $option.additionalInformation}
          <div
            id="{$option.id}-additional-information"
            class="js-additional-information definition-list additional-information{if $option.id != $selected_payment_option} ps-hidden {/if}"
           x678149064300-x-test-hook-12>
            {$option.additionalInformation nofilter}
          </div>
        {/if}

        <div
          id="pay-with-{$option.id}-form"
          class="js-payment-option-form {if $option.id != $selected_payment_option} ps-hidden {/if}"
         x678149064300-x-test-hook-13>
          {if $option.form}
            {$option.form nofilter}
          {else}
            <form id="payment-form" method="POST" action="{$option.action nofilter}" x678149064300-x-test-hook-14>
              {foreach from=$option.inputs item=input}
                <input type="{$input.type}" name="{$input.name}" value="{$input.value}" x678149064300-x-test-hook-15>
              {/foreach}
              <button style="display:none" id="pay-with-{$option.id}" type="submit" x678149064300-x-test-hook-16></button>
            </form>
          {/if}
        </div>
      {/foreach}
    {foreachelse}
      <p class="alert alert-danger" x678149064300-x-test-hook-17>{l s='Unfortunately, there are no payment method available.'}</p>
    {/foreach}
  </div>

  {if $conditions_to_approve|count}
    <p class="ps-hidden-by-js" x678149064300-x-test-tpl-18>
      {* At the moment, we're not showing the checkboxes when JS is disabled
         because it makes ensuring they were checked very tricky and overcomplicates
         the template. Might change later.
      *}
      {l s='By confirming your order, I certify that I have read and agree with all of the conditions below:'}
    </p>

    <form id="conditions-to-approve" method="GET" x678149064300-x-test-tpl-19>
      <ul x678149064300-x-test-hook-20>
        {foreach from=$conditions_to_approve item="condition" key="condition_name"}
          <li x678149064300-x-test-hook-21>
            <div class="pull-xs-left" x678149064300-x-test-hook-22>
              <span class="custom-checkbox" x678149064300-x-test-hook-23>
                <input  id    = "conditions_to_approve[{$condition_name}]"
                        name  = "conditions_to_approve[{$condition_name}]"
                        required
                        type  = "checkbox"
                        value = "1"
                        class = "ps-shown-by-js"
                 x678149064300-x-test-hook-24>
                <span x678149064300-x-test-hook-25><i class="material-icons checkbox-checked" x678149064300-x-test-hook-26>&#xE5CA;</i></span>
              </span>
            </div>
            <div class="condition-label" x678149064300-x-test-hook-27>
              <label class="js-terms" for="conditions_to_approve[{$condition_name}]" x678149064300-x-test-hook-28>
                {$condition nofilter}
              </label>
            </div>
          </li>
        {/foreach}
      </ul>
    </form>
  {/if}

  <div id="payment-confirmation" x678149064300-x-test-tpl-29>
    <div class="ps-shown-by-js" x678149064300-x-test-hook-30>
      <button type="submit" {if !$selected_payment_option} disabled {/if} class="btn btn-primary center-block" x678149064300-x-test-hook-31>
        {l s='Order with an obligation to pay'}
      </button>
    </div>
    <div class="ps-hidden-by-js" x678149064300-x-test-hook-32>
      {if $selected_payment_option and $all_conditions_approved}
        <label for="pay-with-{$selected_payment_option}" x678149064300-x-test-hook-33>{l s='Order with an obligation to pay'}</label>
      {/if}
    </div>
  </div>
  <div class="modal fade" id="modal" x678149064300-x-test-tpl-34>
    <div class="modal-dialog" role="document" x678149064300-x-test-hook-35>
      <div class="modal-content" x678149064300-x-test-hook-36>
      </div>
    </div>
  </div>
{/block}
