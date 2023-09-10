import data
import sender_stand_request

def create_new_order():

    order_body = data.order_body.copy()
    # В переменную order_response сохраняется результат запроса на создание заказа
    order_response = sender_stand_request.post_new_order(order_body)

    track_number = order_response.json()["track"]

    order_response = sender_stand_request.get_order_by_track_number(str(track_number))
    return order_response

# Функция для позитивной проверки
def positive_assert():
    response = create_new_order()
    assert response.status_code == 200

# Бирюкова Наталья -8 когорта - Финальный проект. Инженер по тестированию плюс.
# Тест 1. Проверка на создание заказа
def test_create_order():
    positive_assert()