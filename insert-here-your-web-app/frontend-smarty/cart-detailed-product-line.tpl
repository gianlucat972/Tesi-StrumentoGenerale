<div class="product-line-grid" x678043113843-x-test-tpl-1>  <!--  product left content: image-->
  <div class="product-line-grid-left col-md-3" x678043113843-x-test-hook-2>
    <span class="product-image media-middle" x678043113843-x-test-hook-3>
      <img src="{$product.cover.bySize.cart_default.url}" alt="{$product.name|escape:'quotes'}" x678043113843-x-test-hook-4>
    </span>
  </div>

  <!--  product left body: description -->
  <div class="product-line-grid-body col-md-4" x678043113843-x-test-hook-5>
    <div class="product-line-info" x678043113843-x-test-hook-6>
      <a class="label" href="{$product.url}" x678043113843-x-test-hook-7>{$product.name}</a>
    </div>

    <div class="product-line-info" x678043113843-x-test-hook-8>
      <span class="value" x678043113843-x-test-hook-9>{$product.price}</span>
      {if $product.unit_price_full}
        <small class="sub" x678043113843-x-test-hook-10>{$product.unit_price_full}</small>
      {/if}
    </div>

    <br x678043113843-x-test-hook-11/>

    {foreach from=$product.attributes key="attribute" item="value"}
      <div class="product-line-info" x678043113843-x-test-hook-12>
        <span class="label" x678043113843-x-test-hook-13>{$attribute}:</span>
        <span class="value" x678043113843-x-test-hook-14>{$value}</span>
      </div>
    {/foreach}

    <div class="product-line-info" x678043113843-x-test-hook-15>
      <span class="label" x678043113843-x-test-hook-16>{l s="Quantity"}:</span>
      <span class="value" x678043113843-x-test-hook-17>{$product.quantity}</span>
    </div>

    <br x678043113843-x-test-hook-18/>

  </div>

  <!--  product left body: description -->
  <div class="product-line-grid-right product-line-actions col-md-5" x678043113843-x-test-hook-19>
    <div class="row" x678043113843-x-test-hook-20>
      <div class="col-md-3" x678043113843-x-test-hook-21>
        {*if $product.down_quantity_url}<a href="{$product.down_quantity_url}" data-link-action="update-quantity">-</a>{/if*}
        {*if $product.up_quantity_url}<a href="{$product.up_quantity_url}" data-link-action="update-quantity">+</a>{/if*}
        <input class="cart-line-product-quantity" data-down-url="{$product.down_quantity_url}" data-up-url="{$product.up_quantity_url}" data-product-id="{$product.id_product}" type="text" value="{$product.quantity}" name="product-quantity-spin" x678043113843-x-test-hook-22>
      </div>
      <div class="col-md-7" x678043113843-x-test-hook-23>
        <span class="product-price pull-xs-left" x678043113843-x-test-hook-24><strong x678043113843-x-test-hook-25>{$product.total}</strong></span>
      </div>
      <div class="col-md-2" x678043113843-x-test-hook-26>
        <div class="cart-line-product-actions " x678043113843-x-test-hook-27>
          <a
              class                       = "remove-from-cart"
              rel                         = "nofollow"
              href                        = "{$product.remove_from_cart_url}"
              data-link-action            = "delete-from-cart"
              data-id-product             = "{$product.id_product|escape:'javascript'}"
              data-id-product-attribute   = "{$product.id_product_attribute|escape:'javascript'}"
              data-id-customization   	  = "{$product.id_customization|escape:'javascript'}"
           x678043113843-x-test-hook-28>
            <i class="material-icons pull-xs-left" x678043113843-x-test-hook-29>delete</i>
          </a>
        </div>
      </div>
      {if $product.customizations|count}
        <div class="customizations" x678043113843-x-test-hook-30>
          <ul x678043113843-x-test-hook-31>
            {foreach from=$product.customizations item="customization"}
              <li x678043113843-x-test-hook-32>
                {if count($product.customizations)> 1}
                    {if $customization.down_quantity_url}<a href="{$customization.down_quantity_url}" data-link-action="update-quantity" x678043113843-x-test-hook-33>-</a>{/if}
                    <span class="product-quantity" x678043113843-x-test-hook-34>{$customization.quantity}</span>
                    {if $customization.up_quantity_url}<a href="{$customization.up_quantity_url}" data-link-action="update-quantity" x678043113843-x-test-hook-35>+</a>{/if}
                    <a href="{$customization.remove_from_cart_url}" class="remove-from-cart" rel="nofollow" x678043113843-x-test-hook-36>{l s='Remove'}</a>
                {/if}
                <ul x678043113843-x-test-hook-37>
                  {foreach from=$customization.fields item="field"}
                    <li x678043113843-x-test-hook-38>
                      <label x678043113843-x-test-hook-39>{$field.label}</label>
                      {if $field.type == 'text'}
                        {if (int)$field.id_module}
                          <span x678043113843-x-test-hook-40>{$field.text nofilter}</span>
                        {else}
                          <span x678043113843-x-test-hook-41>{$field.text}</span>
                        {/if}
                      {else if $field.type == 'image'}
                        <img src="{$field.image.small.url}" x678043113843-x-test-hook-42>
                      {/if}
                    </li>
                  {/foreach}
                </ul>
              </li>
            {/foreach}
          </ul>
        </div>
      {/if}
      </div>
    </div>
</div>
