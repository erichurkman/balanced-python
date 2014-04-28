% if mode == 'definition':
balanced.Order().save()
% elif mode == 'request':
import balanced

balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

order = balanced.Order.fetch('/orders/OR6d55qbtKx5aWSURkQeodRr')
order.description = 'New description for order'
order.meta = {
  'anykey': 'valuegoeshere',
  'product.id': '1234567890'
}
order.save()
% elif mode == 'response':
Order(delivery_address={u'city': None, u'line2': None, u'line1': None, u'state': None, u'postal_code': None, u'country_code': None}, description=u'New description for order', links={u'merchant': u'CU4MnFEab304anOtUtEu5hkN'}, created_at=u'2014-04-25T20:18:43.120760Z', updated_at=u'2014-04-25T20:18:46.797463Z', currency=u'USD', amount=0, href=u'/orders/OR6d55qbtKx5aWSURkQeodRr', meta={u'product.id': u'1234567890', u'anykey': u'valuegoeshere'}, id=u'OR6d55qbtKx5aWSURkQeodRr', amount_escrowed=0)
% endif