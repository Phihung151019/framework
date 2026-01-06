.class final Landroid/nfc/cardemulation/HostApduService$MsgHandler;
.super Landroid/os/Handler;
.source "HostApduService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/HostApduService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MsgHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/nfc/cardemulation/HostApduService;


# direct methods
.method constructor blacklist <init>(Landroid/nfc/cardemulation/HostApduService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/nfc/cardemulation/HostApduService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 323
    iput-object p1, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 326
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "RemoteException calling into NfcService."

    const-string v2, "Response not sent; service was deactivated."

    const-string v3, "hce_response_apdu"

    const/4 v4, 0x0

    const-string v5, "ApduService"

    packed-switch v0, :pswitch_data_0

    .line 436
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 396
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received response apdu ack for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    goto/16 :goto_3

    .line 418
    :pswitch_2
    nop

    .line 419
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.nfc.cardemulation.POLLING_FRAMES"

    const-class v2, Landroid/nfc/cardemulation/PollingFrame;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 421
    .local v0, "pollingFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/PollingFrame;>;"
    iget-object v1, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v1, v0}, Landroid/nfc/cardemulation/HostApduService;->processPollingFrames(Ljava/util/List;)V

    .line 423
    invoke-static {}, Lcom/android/nfc/module/flags/Flags;->nfcHceLatencyEvents()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    const/4 v1, 0x7

    :try_start_0
    invoke-static {v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 426
    .local v1, "ackMsg":Landroid/os/Message;
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 427
    iget-object v2, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v2}, Landroid/nfc/cardemulation/HostApduService;->getMessenger()Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 428
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    .end local v1    # "ackMsg":Landroid/os/Message;
    goto :goto_0

    .line 429
    :catch_0
    move-exception v1

    .line 430
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to acknowledge MSG_POLLING_LOOP"

    invoke-static {v5, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    .end local v0    # "pollingFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/PollingFrame;>;"
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    goto/16 :goto_3

    .line 405
    :pswitch_3
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/HostApduService;->getNfcService()Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_1

    .line 406
    const-string v0, "notifyUnhandled not sent; service was deactivated."

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void

    .line 410
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/HostApduService;->getMessenger()Landroid/os/Messenger;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 411
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/HostApduService;->getNfcService()Landroid/os/Messenger;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 414
    goto/16 :goto_3

    .line 412
    :catch_1
    move-exception v0

    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .end local v0    # "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    .line 401
    :pswitch_4
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v0, v4}, Landroid/nfc/cardemulation/HostApduService;->setNfcService(Landroid/os/Messenger;)V

    .line 402
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/nfc/cardemulation/HostApduService;->onDeactivated(I)V

    .line 403
    goto/16 :goto_3

    .line 383
    :pswitch_5
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/HostApduService;->getNfcService()Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_2

    .line 384
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-void

    .line 389
    :cond_2
    :try_start_2
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/HostApduService;->getMessenger()Landroid/os/Messenger;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 390
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/HostApduService;->getNfcService()Landroid/os/Messenger;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 393
    goto/16 :goto_3

    .line 391
    :catch_2
    move-exception v0

    .line 392
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .end local v0    # "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    .line 328
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 329
    .local v0, "dataBundle":Landroid/os/Bundle;
    if-nez v0, :cond_3

    .line 330
    return-void

    .line 332
    :cond_3
    iget-object v1, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/HostApduService;->getNfcService()Landroid/os/Messenger;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v6}, Landroid/nfc/cardemulation/HostApduService;->setNfcService(Landroid/os/Messenger;)V

    .line 334
    :cond_4
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 335
    .local v6, "apdu":[B
    if-eqz v6, :cond_a

    .line 336
    iget-object v7, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v7, v6, v4}, Landroid/nfc/cardemulation/HostApduService;->processCommandApdu([BLandroid/os/Bundle;)[B

    move-result-object v7

    .line 338
    .local v7, "responseApdu":[B
    invoke-static {}, Lcom/android/nfc/module/flags/Flags;->nfcHceLatencyEvents()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 340
    const/4 v8, 0x5

    :try_start_3
    invoke-static {v4, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    .line 341
    .local v8, "ackMsg":Landroid/os/Message;
    iget v9, p1, Landroid/os/Message;->arg1:I

    iput v9, v8, Landroid/os/Message;->arg1:I

    .line 342
    iget-object v9, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v9}, Landroid/nfc/cardemulation/HostApduService;->getMessenger()Landroid/os/Messenger;

    move-result-object v9

    iput-object v9, v8, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 343
    iget-object v9, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v9, v8}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 346
    .end local v8    # "ackMsg":Landroid/os/Message;
    goto :goto_1

    .line 344
    :catch_3
    move-exception v8

    .line 345
    .local v8, "e":Landroid/os/RemoteException;
    const-string v9, "Failed to acknowledge MSG_COMMAND_APDU"

    invoke-static {v5, v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_1
    if-eqz v7, :cond_9

    .line 350
    iget-object v8, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v8}, Landroid/nfc/cardemulation/HostApduService;->getNfcService()Landroid/os/Messenger;

    move-result-object v8

    if-nez v8, :cond_6

    .line 351
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void

    .line 355
    :cond_6
    const/4 v2, 0x1

    invoke-static {v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 357
    .local v2, "responseMsg":Landroid/os/Message;
    const/4 v4, 0x0

    .line 358
    .local v4, "ackCookie":I
    invoke-static {}, Lcom/android/nfc/module/flags/Flags;->nfcHceLatencyEvents()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 359
    iget-object v8, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-static {v8}, Landroid/nfc/cardemulation/HostApduService;->-$$Nest$mgenerateApduAckCookie(Landroid/nfc/cardemulation/HostApduService;)I

    move-result v4

    .line 360
    iput v4, p1, Landroid/os/Message;->arg1:I

    .line 361
    invoke-static {v3, v4}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 364
    :cond_7
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 365
    .local v8, "responseBundle":Landroid/os/Bundle;
    invoke-virtual {v8, v1, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 366
    invoke-virtual {v2, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 367
    iget-object v1, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/HostApduService;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 369
    :try_start_4
    iget-object v1, p0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostApduService;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/HostApduService;->getNfcService()Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 376
    goto :goto_2

    .line 370
    :catch_4
    move-exception v1

    .line 371
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/nfc/module/flags/Flags;->nfcHceLatencyEvents()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 372
    invoke-static {v3, v4}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 374
    :cond_8
    const-string v3, "Response not sent; RemoteException calling into NfcService."

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "responseMsg":Landroid/os/Message;
    .end local v4    # "ackCookie":I
    .end local v7    # "responseApdu":[B
    .end local v8    # "responseBundle":Landroid/os/Bundle;
    :cond_9
    :goto_2
    goto :goto_3

    .line 379
    :cond_a
    const-string v1, "Received MSG_COMMAND_APDU without data."

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    nop

    .line 438
    .end local v0    # "dataBundle":Landroid/os/Bundle;
    .end local v6    # "apdu":[B
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
