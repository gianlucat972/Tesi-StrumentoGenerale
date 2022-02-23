{extends file='customer/page.tpl'}
{block name='page_title'}
  {l s='Order details'}
{/block}

{block name='page_content'}
  {block name='order_infos'}
    <div id="order-infos" x678129884505-x-test-tpl-1>
      <div class="box" x678129884505-x-test-hook-2>
          <strong x678129884505-x-test-hook-3>{l s='Order Reference %s - placed on %s' sprintf=[$order.details.reference, $order.details.order_date]}</strong>
          {if $order.details.url_to_reorder}
            <div class="pull-xs-right" x678129884505-x-test-hook-4>
              <a href="{$order.details.url_to_reorder}" class="button-primary" x678129884505-x-test-hook-5>{l s='Reorder'}</a>
            </div>
            <div class="clearfix" x678129884505-x-test-hook-6></div>
          {/if}
      </div>

      <div class="box" x678129884505-x-test-hook-7>
          <ul x678129884505-x-test-hook-8>
          <li x678129884505-x-test-hook-9><strong x678129884505-x-test-hook-10>{l s='Carrier'}</strong> {$order.carrier.name}</li>
          <li x678129884505-x-test-hook-11><strong x678129884505-x-test-hook-12>{l s='Payment method'}</strong> {$order.details.payment}</li>

          {if $order.details.url_to_invoice}
            <li x678129884505-x-test-hook-13><a href="{$order.details.url_to_invoice}" x678129884505-x-test-hook-14>{l s='Download your invoice as a PDF file.'}</a></li>
          {/if}

          {if $order.details.recyclable}
            <li x678129884505-x-test-hook-15>{l s='You have given permission to receive your order in recycled packaging.'}</li>
          {/if}

          {if $order.details.gift_message}
            <li x678129884505-x-test-hook-16>{l s='You have requested gift wrapping for this order.'}</li>
            <li x678129884505-x-test-hook-17>{l s='Message'} {$order.details.gift_message nofilter}</li>
          {/if}
          </ul>
      </div>
    </div>
  {/block}

  {block name='order_history'}
    <section id="order-history" class="box" x678129884505-x-test-tpl-18>
      <h3 x678129884505-x-test-hook-19>{l s='Follow your order\'s status step-by-step'}</h3>
      <table class="table table-striped table-bordered table-labeled" x678129884505-x-test-hook-20>
        <thead class="thead-default" x678129884505-x-test-hook-21>
          <tr x678129884505-x-test-hook-22>
            <th x678129884505-x-test-hook-23>{l s='Date'}</th>
            <th x678129884505-x-test-hook-24>{l s='Status'}</th>
          </tr>
        </thead>
        <tbody x678129884505-x-test-hook-25>
          {foreach from=$order.history item=state}
            <tr x678129884505-x-test-hook-26>
              <td x678129884505-x-test-hook-27>{$state.history_date}</td>
              <td x678129884505-x-test-hook-28><span class="label label-pill {$state.contrast}" style="background-color:{$state.color}" x678129884505-x-test-hook-29>{$state.ostate_name}</span></td>
            </tr>
          {/foreach}
        </tbody>
      </table>
    </section>
  {/block}

  {if $order.follow_up}
    <div class="box" x678129884505-x-test-tpl-30>
      <p x678129884505-x-test-hook-31>{l s='Click the following link to track the delivery of your order'}</p>
      <a href="{$order.follow_up}" x678129884505-x-test-hook-32>{$order.follow_up}</a>
    </div>
  {/if}

  {block name='addresses'}
    <div class="addresses" x678129884505-x-test-tpl-33>
      {if $order.addresses.delivery}
        <div class="col-lg-6 col-md-6 col-sm-6" x678129884505-x-test-hook-34>
          <article id="delivery-address" class="box" x678129884505-x-test-hook-35>
            <h4 x678129884505-x-test-hook-36>{l s='Delivery address %s' sprintf=$order.addresses.delivery.alias}</h4>
            <address x678129884505-x-test-hook-37>{$order.addresses.delivery.formatted nofilter}</address>
          </article>
        </div>
      {/if}

      <div class="col-lg-6 col-md-6 col-sm-6" x678129884505-x-test-hook-38>
        <article id="invoice-address" class="box" x678129884505-x-test-hook-39>
          <h4 x678129884505-x-test-hook-40>{l s='Invoice address %s' sprintf=$order.addresses.invoice.alias}</h4>
          <address x678129884505-x-test-hook-41>{$order.addresses.invoice.formatted nofilter}</address>
        </article>
      </div>
      <div class="clearfix" x678129884505-x-test-hook-42></div>
    </div>
  {/block}

  {$hook_orderdetaildisplayed}

  {block name='order_detail'}
    {if $order.details.return_allowed}
      {include file='customer/_partials/order-detail-return.tpl'}
    {else}
      {include file='customer/_partials/order-detail-no-return.tpl'}
    {/if}
  {/block}

  {block name='order_carriers'}
    {if $order.shipping}
      <div class="box" x678129884505-x-test-tpl-43>
        <table class="table table-striped table-bordered" x678129884505-x-test-hook-44>
          <thead class="thead-default" x678129884505-x-test-hook-45>
            <tr x678129884505-x-test-hook-46>
              <th x678129884505-x-test-hook-47>{l s='Date'}</th>
              <th x678129884505-x-test-hook-48>{l s='Carrier'}</th>
              <th x678129884505-x-test-hook-49>{l s='Weight'}</th>
              <th x678129884505-x-test-hook-50>{l s='Shipping cost'}</th>
              <th x678129884505-x-test-hook-51>{l s='Tracking number'}</th>
            </tr>
          </thead>
          <tbody x678129884505-x-test-hook-52>
            {foreach from=$order.shipping item=line}
              <tr x678129884505-x-test-hook-53>
                <td x678129884505-x-test-hook-54>{$line.shipping_date}</td>
                <td x678129884505-x-test-hook-55>{$line.carrier_name}</td>
                <td x678129884505-x-test-hook-56>{$line.shipping_weight}</td>
                <td class="text-xs-right" x678129884505-x-test-hook-57>{$line.shipping_cost}</td>
                <td x678129884505-x-test-hook-58>{$line.tracking}</td>
              </tr>
            {/foreach}
          </tbody>
        </table>
      </div>
    {/if}
  {/block}

  {block name='order_messages'}
    {include file='customer/_partials/order-messages.tpl'}
  {/block}
{/block}
