{extends file=$layout}
{block name='head_seo' prepend}
  <link rel="canonical" href="{$product.canonical_url}" x678167995880-x-test-tpl-1>
{/block}

{block name='head' append}
  <meta property="og:type" content="product" x678167995880-x-test-tpl-2>
  <meta property="og:url" content="{$urls.current_url}" x678167995880-x-test-tpl-3>
  <meta property="og:title" content="{$page.title}" x678167995880-x-test-tpl-4>
  <meta property="og:site_name" content="{$shop.name}" x678167995880-x-test-tpl-5>
  <meta property="og:description" content="{$page.description}" x678167995880-x-test-tpl-6>
  <meta property="og:image" content="{$product.cover.large.url}" x678167995880-x-test-tpl-7>
  <meta property="product:pretax_price:amount" content="{$product.price_tax_exc}" x678167995880-x-test-tpl-8>
  <meta property="product:pretax_price:currency" content="{$currency.iso_code}" x678167995880-x-test-tpl-9>
  <meta property="product:price:amount" content="{$product.price_amount}" x678167995880-x-test-tpl-10>
  <meta property="product:price:currency" content="{$currency.iso_code}" x678167995880-x-test-tpl-11>
  {if isset($product.weight) && ($product.weight != 0)}
  <meta property="product:weight:value" content="{$product.weight}" x678167995880-x-test-tpl-12>
  <meta property="product:weight:units" content="{$product.weight_unit}" x678167995880-x-test-tpl-13>
  {/if}
{/block}

{block name='content'}

  <section id="main" itemscope itemtype="https://schema.org/Product" x678167995880-x-test-tpl-14>
    <meta itemprop="url" content="{$product.url}" x678167995880-x-test-hook-15>

    <div class="row" x678167995880-x-test-hook-16>
      <div class="col-md-6" x678167995880-x-test-hook-17>
        {block name='page_content_container'}
          <section class="page-content" id="content" x678167995880-x-test-hook-18>
            {block name='page_content'}
              {block name='product_labels'}
                <ul class="product-labels" x678167995880-x-test-hook-19>
                  {foreach from=$product.labels item=label}
                    <li class="product-label" x678167995880-x-test-hook-20>{$label.label}</li>
                  {/foreach}
                </ul>
              {/block}

              {block name='product_cover_tumbnails'}
                {include file='catalog/_partials/product-cover-thumbnails.tpl'}
              {/block}

            {/block}
          </section>
        {/block}
        </div>
        <div class="col-md-6" x678167995880-x-test-hook-21>
          {block name='page_header_container'}
            {block name='page_header'}
              <h1 class="h1" itemprop="name" x678167995880-x-test-hook-22>{block name='page_title'}{$product.name}{/block}</h1>
            {/block}
          {/block}
          {block name='product_prices'}
            {include file='catalog/_partials/product-prices.tpl'}
          {/block}

          <div class="product-information" x678167995880-x-test-hook-23>
            {block name='product_description_short'}
              <div id="product-description-short-{$product.id}" itemprop="description" x678167995880-x-test-hook-24>{$product.description_short nofilter}</div>
            {/block}

            {if $product.is_customizable && count($product.customizations.fields)}
              {block name='product_customization'}
                {include file="catalog/_partials/product-customization.tpl" customizations=$product.customizations}
              {/block}
            {/if}

            <div class="product-actions" x678167995880-x-test-hook-25>
              {block name='product_buy'}
                <form action="{$urls.pages.cart}" method="post" id="add-to-cart-or-refresh" x678167995880-x-test-hook-26>
                  <input type="hidden" name="token" value="{$static_token}" x678167995880-x-test-hook-27>
                  <input type="hidden" name="id_product" value="{$product.id}" id="product_page_product_id" x678167995880-x-test-hook-28>
                  <input type="hidden" name="id_customization" value="{$product.id_customization}" id="product_customization_id" x678167995880-x-test-hook-29 />

                  {block name='product_variants'}
                    {include file='catalog/_partials/product-variants.tpl'}
                  {/block}

                  {block name='product_pack'}
                    {if $packItems}
                      <section class="product-pack" x678167995880-x-test-hook-30>
                        <h3 class="h4" x678167995880-x-test-hook-31>{l s='This pack contains'}</h3>
                        {foreach from=$packItems item="product_pack"}
                          {block name='product_miniature'}
                            {include file='catalog/_partials/miniatures/pack-product.tpl' product=$product_pack}
                          {/block}
                        {/foreach}
                    </section>
                    {/if}
                  {/block}

                  {block name='product_discounts'}
                    {if $product.quantity_discounts}
                      <section class="product-discounts" x678167995880-x-test-hook-32>
                        <h3 class="h6 product-discounts-title" x678167995880-x-test-hook-33>{l s='Volume discounts'}</h3>
                        <table class="table-product-discounts" x678167995880-x-test-hook-34>
                          <thead x678167995880-x-test-hook-35>
                            <tr x678167995880-x-test-hook-36>
                              <th x678167995880-x-test-hook-37>{l s='Quantity'}</th>
                              <th x678167995880-x-test-hook-38>{if $display_discount_price}{l s='Price'}{else}{l s='Discount'}{/if}</th>
                              <th x678167995880-x-test-hook-39>{l s='You Save'}</th>
                            </tr>
                          </thead>
                          <tbody x678167995880-x-test-hook-40>
                            {foreach from=$product.quantity_discounts item='quantity_discount' name='quantity_discounts'}
                              <tr data-discount-type="{$quantity_discount.reduction_type}" data-discount="{$quantity_discount.real_value}" data-discount-quantity="{$quantity_discount.quantity}" x678167995880-x-test-hook-41>
                                <td x678167995880-x-test-hook-42>{$quantity_discount.quantity}</td>
                                <td x678167995880-x-test-hook-43>{$quantity_discount.discount}</td>
                                <td x678167995880-x-test-hook-44>{l s='Up to %s' sprintf=$quantity_discount.save}</td>
                              </tr>
                            {/foreach}
                          </tbody>
                        </table>
                      </section>
                      <hr x678167995880-x-test-hook-45>
                    {/if}
                  {/block}

                  {block name='product_add_to_cart'}
                    {include file='catalog/_partials/product-add-to-cart.tpl'}
                  {/block}

                  {block name='product_refresh'}
                    <input class="product-refresh ps-hidden-by-js" name="refresh" type="submit" value="{l s='Refresh'}" x678167995880-x-test-hook-46>
                  {/block}
                </form>
              {/block}

            </div>

            {hook h='displayReassurance'}

            <div class="tabs" x678167995880-x-test-hook-47>
              <ul class="nav nav-tabs" x678167995880-x-test-hook-48>
                <li class="nav-item" x678167995880-x-test-hook-49>
                  <a class="nav-link active" data-toggle="tab" href="#description" x678167995880-x-test-hook-50>{l s='Description'}</a>
                </li>
                <li class="nav-item" x678167995880-x-test-hook-51>
                  <a class="nav-link" data-toggle="tab" href="#product-details" x678167995880-x-test-hook-52>{l s='Product Details'}</a>
                </li>
              </ul>

              <div class="tab-content" id="tab-content" x678167995880-x-test-hook-53>
               <div class="tab-pane fade in active" id="description" x678167995880-x-test-hook-54>
                 {block name='product_description'}
                   <div class="product-description" x678167995880-x-test-hook-55>{$product.description nofilter}</div>
                 {/block}
               </div>

               {block name='product_details'}
                 {include file='catalog/_partials/product-details.tpl'}
               {/block}
            </div>
          </div>
        </div>
      </div>
    </div>

    {block name='product_extra_right'}
      <div class="product-extra-right" x678167995880-x-test-hook-56>
        {hook h='displayRightColumnProduct'}
      </div>
    {/block}

    {block name='product_extra_left'}
      <div class="product-extra-left" x678167995880-x-test-hook-57>
        {hook h='displayLeftColumnProduct'}
      </div>
    {/block}

      {block name='product_accessories'}
        {if $accessories}
          <section class="product-accessories clearfix" x678167995880-x-test-hook-58>
            <h3 class="h5 text-uppercase" x678167995880-x-test-hook-59>{l s='You might also like'}</h3>
            {foreach from=$accessories item="product_accessory"}
              {block name='product_miniature'}
                {include file='catalog/_partials/miniatures/product.tpl' product=$product_accessory}
              {/block}
            {/foreach}
          </section>
        {/if}
      {/block}

      {block name='product_footer'}
        {hook h='displayFooterProduct' product=$product category=$category}
      {/block}

      {block name='product_attachments'}
        {if $product.attachments}
          <section class="product-attachments" x678167995880-x-test-hook-60>
            <h3 class="h5 text-uppercase" x678167995880-x-test-hook-61>{l s='Download'}</h3>
            {foreach from=$product.attachments item=attachment}
              <div class="attachment" x678167995880-x-test-hook-62>
                <h4 x678167995880-x-test-hook-63><a href="{$link->getPageLink('attachment', true, NULL, "id_attachment={$attachment.id_attachment}")}" x678167995880-x-test-hook-64>{$attachment.name}</a></h4>
                <p x678167995880-x-test-hook-65>{$attachment.description}</p>
                <a href="{$link->getPageLink('attachment', true, NULL, "id_attachment={$attachment.id_attachment}")}" x678167995880-x-test-hook-66>
                  {l s='Download'} ({Tools::formatBytes($attachment.file_size, 2)})
                </a>
              </div>
            {/foreach}
          </section>
        {/if}
      {/block}

    <div class="modal fade" id="product-modal" x678167995880-x-test-hook-67>
      <div class="modal-dialog" role="document" x678167995880-x-test-hook-68>
        <div class="modal-content" x678167995880-x-test-hook-69>
          <div class="modal-body" x678167995880-x-test-hook-70>
            <figure x678167995880-x-test-hook-71>
              <img class="js-product-cover product-cover-modal" width="{$product.cover.large.width}" src="{$product.cover.large.url}" alt="{$product.cover.legend}" title="{$product.cover.legend}" itemprop="image" x678167995880-x-test-hook-72>
              <figcaption class="image-caption" x678167995880-x-test-hook-73>
              {block name='product_description_short'}
                <div id="product-description-short" itemprop="description" x678167995880-x-test-hook-74>{$product.description_short nofilter}</div>
              {/block}
            </figcaption>
            </figure>
            <aside id="thumbnails" class="thumbnails js-thumbnails text-xs-center" x678167995880-x-test-hook-75>
              {block name='product_images'}
                <div class="js-mask mask" x678167995880-x-test-hook-76>
                  <ul class="product-images js-product-images" x678167995880-x-test-hook-77>
                    {foreach from=$product.images item=image}
                      <li class="thumb-container" x678167995880-x-test-hook-78>
                        <img data-image-large-src="{$image.large.url}" class="thumb js-thumb" src="{$image.medium.url}" alt="{$image.legend}" title="{$image.legend}" width="{$image.medium.width}" itemprop="image" x678167995880-x-test-hook-79>
                      </li>
                    {/foreach}
                  </ul>
                </div>
              {/block}
              <div class="arrows js-arrows" x678167995880-x-test-hook-80>
                <i class="material-icons arrow-up js-arrow-up" x678167995880-x-test-hook-81>&#xE5C7;</i>
                <i class="material-icons arrow-down js-arrow-down" x678167995880-x-test-hook-82>&#xE5C5;</i>
              </div>
            </aside>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    {block name='page_footer_container'}
      <footer class="page-footer" x678167995880-x-test-hook-83>
        {block name='page_footer'}
          <!-- Footer content -->
        {/block}
      </footer>
    {/block}
  </section>

{/block}
