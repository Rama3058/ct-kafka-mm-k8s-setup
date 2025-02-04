#!/bin/bash

echo "Executing ACL rules..."
exec &> acl_rules.log

echo "Executing ACL rules on TXNS..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic TXNS

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_oldtxn_producer_user }} --operation Write --topic TXNS

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic TXNS

echo "Executing ACL rules on DLY_STMT..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_stmt_producer_user }} --operation Write --topic DLY_STMT

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic DLY_STMT

echo "Executing ACL rules on DLY_STMT_USERS..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_ums_producer_user }} --operation Write --topic DLY_STMT_USERS

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic DLY_STMT_USERS

echo "Executing ACL rules on orderstatusupdate..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_oms_producer_user }} --operation Write --topic orderstatusupdate

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic orderstatusupdate

echo "Executing ACL rules on notificationsms..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic notificationsms

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic notificationsms

echo "Executing ACL rules on notificationurl..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic notificationurl

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic notificationurl

echo "Executing ACL rules on notificationpost..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic notificationpost

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic notificationpost

echo "Executing ACL rules on ACCOUNT..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic ACCOUNT

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic ACCOUNT

echo "Executing ACL rules on AMBIGUOUS..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic AMBIGUOUS

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic AMBIGUOUS

echo "Executing ACL rules on CASHOUTREG..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic CASHOUTREG

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic CASHOUTREG


echo "Executing ACL rules on DOWNSTREAM_EVENTS..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic DOWNSTREAM_EVENTS

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic DOWNSTREAM_EVENTS

echo "Executing ACL rules on KYC..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic KYC

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic KYC

echo "Executing ACL rules on KYCIMG..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic KYCIMG

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic KYCIMG

echo "Executing ACL rules on PARTYKYC..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic PARTYKYC

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic PARTYKYC

echo "Executing ACL rules on REFUND..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic REFUND

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic REFUND

echo "Executing ACL rules on ROLLBACK..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic ROLLBACK

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic ROLLBACK

echo "Executing ACL rules on S_EVENT_SINK_TRACKER..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic S_EVENT_SINK_TRACKER

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic S_EVENT_SINK_TRACKER

echo "Executing ACL rules on USERSTATUS..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic USERSTATUS

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic USERSTATUS

echo "Executing ACL rules on NOTIFICATION..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic NOTIFICATION

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic NOTIFICATION

echo "Executing ACL rules on notificationfcmpush..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic notificationfcmpush

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic notificationfcmpush

echo "Executing ACL rules on notificationpost..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic notificationpost

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic notificationpost

echo "Executing ACL rules on notificationsms..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic notificationsms

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic notificationsms

echo "Executing ACL rules on notificationurl..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic notificationurl

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic notificationurl

echo "Executing ACL rules on REQMNY..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic REQMNY

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic REQMNY

echo "Executing ACL rules on EVENTS..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic EVENTS

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic EVENTS

echo "Executing ACL rules on newevents..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic events

echo "Executing ACL rules on ordernpayin"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic {{ order_n_pay_in }}

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic {{ order_n_pay_in }}

echo "Executing ACL rules on ordernpayout"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Write --topic {{ order_n_pay_out }}

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic {{ order_n_pay_out }}

echo "Allow Streams to manage its own internal topics:"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation READ --operation DELETE --operation WRITE --operation CREATE --resource-pattern-type prefixed --topic orderNPayApp

echo "Allow Streams to manage its own consumer groups:"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation READ --operation DESCRIBE --resource-pattern-type prefixed --group orderNPayApp

echo "Executing ACL rules on svabalances"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_interest_user }} --operation Write --topic {{ sva_balances }}

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_interest_user }} --operation Read --group=* --topic {{ sva_balances }}

echo "Executing ACL rules on walletminbalances"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_interest_user }} --operation Read --group=* --topic TXNS
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_interest_user }} --operation Write --topic {{ wallet_minbalances }}

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_interest_user }} --operation Read --group=* --topic {{ wallet_minbalances }}

echo "Executing ACL rules on App.prefixed"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_interest_user }} --operation READ --operation DELETE --operation WRITE --operation CREATE --resource-pattern-type prefixed --topic App.Interest_Service_SvaBal

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_interest_user }} --operation READ --operation DELETE --operation WRITE --operation CREATE --resource-pattern-type prefixed --group App.Interest_Service_SvaBal

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_sfm_user }} --operation Write --topic sfm.transaction

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_sfm_user }} --operation READ --group=SFMTransactionConsumer --topic sfm.transaction

echo "Executing ACL rules on sfm.orderandpay"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_sfm_user }} --operation Write --topic sfm.orderandpay

echo "Executing ACL rules on sfm.orderandpay"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_sfm_user }} --operation READ --group=SFMOrderConsumer --topic sfm.orderandpay

echo "Executing ACL rules on sfm.registration"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_sfm_user }} --operation Write --topic sfm.registration

echo "Executing ACL rules on sfm.registration"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_sfm_user }} --operation READ --group=SFMRegistrationConsumer --topic sfm.registration

echo "Executing ACL rules on sfm.deregistration"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_sfm_user }} --operation Write --topic sfm.deregistration

echo "Executing ACL rules on sfm.deregistration"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_sfm_user }} --operation READ --group=SFMDeRegistrationConsumer --topic sfm.deregistration

echo "Executing ACL rules on sfm.UPGRADEKYC"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_sfm_user }} --operation Write --topic sfm.UPGRADEKYC

echo "Executing ACL rules on sfm.UPGRADEKYC"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_sfm_user }} --operation READ --group=* --topic sfm.UPGRADEKYC

echo "Executing ACL rules on sfm.BANKLINKING"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_sfm_user }} --operation Write --topic sfm.BANKLINKING

echo "Executing ACL rules on sfm.BANKLINKING"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_sfm_user }} --operation READ --group=* --topic sfm.BANKLINKING

echo "Executing ACL rules on sfm.BANKDELINKING"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_sfm_user }} --operation Write --topic sfm.BANKDELINKING

echo "Executing ACL rules on sfm.BANKDELINKING"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_sfm_user }} --operation READ --group=* --topic sfm.BANKDELINKING

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:INTEREST_SERVICE --operation Describe --topic TXNS

echo "Executing ACL rules on notificationposttop"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic notificationposttop

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic notificationposttop

echo "Executing ACL rules on notificationpostlow"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic notificationpostlow

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic notificationpostlow

echo "Executing ACL rules on notificationsmslow"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic notificationsmslow

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic notificationsmslow

echo "Executing ACL rules on notificationsmstop"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic notificationsmstop

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic notificationsmstop

echo "Executing ACL rules on notificationurllow"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic notificationurllow

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic notificationurllow

echo "Executing ACL rules on notificationurltop"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic notificationurltop

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic notificationurltop

echo "Executing ACL rules on notificationfcmpushtop"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic notificationfcmpushtop

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic notificationfcmpushtop

echo "Executing ACL rules on notificationfcmpushlow"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic notificationfcmpushlow

echo "Executing ACL rules on notificationfcmpushlow"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic notificationfcmpushlow

echo "Executing ACL rules on notificationfcmpushlow"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:consumer --operation Read --group=* --topic notificationfcmpushlow

echo "Executing ACL rules on sendnotification"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:NotificationProducer --operation Write --topic sendnotification

echo "Executing ACL rules on sendnotification"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:notificationconsumer --operation Read --group=* --topic sendnotification

echo "Executing ACL rules on sendnotificationtop"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:NotificationProducer --operation Write --topic sendnotificationtop

echo "Executing ACL rules on sendnotificationtop"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:notificationconsumer --operation Read --group=* --topic sendnotificationtop

echo "Executing ACL rules on sendnotificationlow"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:NotificationProducer --operation Write --topic sendnotificationlow

echo "Executing ACL rules on sendnotificationlow"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:notificationconsumer --operation Read --group=* --topic sendnotificationlow

echo "Executing ACL rules on budsusagedata"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic budsusagedata

echo "Executing ACL rules on budsusagedata"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic budsusagedata

echo "Executing ACL rules on usermangementevents..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_stmt_producer_user }} --operation Write --topic USER_MANGEMENT_EVENTS

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic USER_MANGEMENT_EVENTS

echo "Executing ACL rules on financialtransactionevents..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic FINANCIAL_TRANSACTION_EVENTS

echo "Executing ACL rules on audit-trail-dump"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic audittraildump

echo "Executing ACL rules on audit-trail-dump"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic audittraildump


echo "Executing ACL rules on admin-audit-trail-events"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic audittrailevents

echo "Executing ACL rules on admin-audit-trail-events"
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic audittrailevents

echo "Executing ACL rules on TXNS_RETRY..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic TXNS_RETRY

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_oldtxn_producer_user }} --operation Write --topic TXNS_RETRY

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic TXNS_RETRY

echo "Executing ACL rules on TXNS_DLT..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic TXNS_DLT

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_oldtxn_producer_user }} --operation Write --topic TXNS_DLT

sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_consumer_user }} --operation Read --group=* --topic TXNS_DLT


echo "Executing ACL rules on kafkaheartbeat..."
sh {{ deployment_base_path }}/{{ application_name }}_{{ kafka_version }}/bin/kafka-acls.sh --authorizer-properties zookeeper.connect=localhost:2181 --add --allow-principal User:{{ topic_producer_user }} --operation Write --topic kafka-heart-beat