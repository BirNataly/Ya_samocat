import configuration
import requests


def post_new_order(body):
    return requests.post(configuration.URL_SERVICE + configuration.ORDER,
                         json=body)

def get_order_by_track_number(track_number):
    return requests.get(configuration.URL_SERVICE + configuration.ORDER, "t=" + track_number)

