.class public abstract Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;
.super Landroid/os/Binder;
.source "IFileTransferService.java"

# interfaces
.implements Lcom/gsma/services/rcs/filetransfer/IFileTransferService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/IFileTransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addEventListener:I = 0x3

.field static final TRANSACTION_addGroupFileTransferListener:I = 0x10

.field static final TRANSACTION_addOneToOneFileTransferListener:I = 0xe

.field static final TRANSACTION_canTransferFileToGroupChat:I = 0xb

.field static final TRANSACTION_clearFileTransferDeliveryExpiration:I = 0x1c

.field static final TRANSACTION_deleteFileTransfer:I = 0x16

.field static final TRANSACTION_deleteGroupFileTransfers:I = 0x13

.field static final TRANSACTION_deleteGroupFileTransfersByChatId:I = 0x15

.field static final TRANSACTION_deleteOneToOneFileTransfers:I = 0x12

.field static final TRANSACTION_deleteOneToOneFileTransfersByContactId:I = 0x14

.field static final TRANSACTION_getConfiguration:I = 0x5

.field static final TRANSACTION_getFileTransfer:I = 0x7

.field static final TRANSACTION_getFileTransfers:I = 0x6

.field static final TRANSACTION_getServiceVersion:I = 0x2

.field static final TRANSACTION_getUndeliveredFileTransfers:I = 0x1a

.field static final TRANSACTION_isAllowedToTransferFile:I = 0x1d

.field static final TRANSACTION_isAllowedTotransferFile:I = 0xa

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_markFileTransferAsRead:I = 0xd

.field static final TRANSACTION_markUndeliveredFileTransfersAsProcessed:I = 0x1b

.field static final TRANSACTION_removeEventListener:I = 0x4

.field static final TRANSACTION_removeGroupFileTransferListener:I = 0x11

.field static final TRANSACTION_removeOneToOneFileTransferListener:I = 0xf

.field static final TRANSACTION_setAutoAccept:I = 0x17

.field static final TRANSACTION_setAutoAcceptInRoaming:I = 0x18

.field static final TRANSACTION_setImageResizeOption:I = 0x19

.field static final TRANSACTION_transferAudioMessage:I = 0x9

.field static final TRANSACTION_transferFile:I = 0x8

.field static final TRANSACTION_transferFileToGroupChat:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 127
    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IFileTransferService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 135
    if-nez p0, :cond_0

    .line 136
    const/4 v0, 0x0

    return-object v0

    .line 138
    :cond_0
    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 139
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v1, :cond_1

    .line 140
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    return-object v1

    .line 142
    :cond_1
    new-instance v1, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 146
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    .line 151
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 152
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 155
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    return v1

    .line 158
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 431
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 422
    :pswitch_0
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 423
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->isAllowedToTransferFile(Lcom/gsma/services/rcs/contact/ContactId;)Z

    move-result v3

    .line 425
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 427
    goto/16 :goto_0

    .line 413
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_result":Z
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 414
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->clearFileTransferDeliveryExpiration(Ljava/util/List;)V

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    goto/16 :goto_0

    .line 404
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 405
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->markUndeliveredFileTransfersAsProcessed(Ljava/util/List;)V

    .line 407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    goto/16 :goto_0

    .line 394
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 395
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->getUndeliveredFileTransfers(Lcom/gsma/services/rcs/contact/ContactId;)Ljava/util/List;

    move-result-object v3

    .line 397
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 399
    goto/16 :goto_0

    .line 385
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 386
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->setImageResizeOption(I)V

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    goto/16 :goto_0

    .line 376
    .end local v2    # "_arg0":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 377
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->setAutoAcceptInRoaming(Z)V

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    goto/16 :goto_0

    .line 367
    .end local v2    # "_arg0":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 368
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->setAutoAccept(Z)V

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    goto/16 :goto_0

    .line 358
    .end local v2    # "_arg0":Z
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->deleteFileTransfer(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    goto/16 :goto_0

    .line 349
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 350
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->deleteGroupFileTransfersByChatId(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    goto/16 :goto_0

    .line 340
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_9
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 341
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 342
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->deleteOneToOneFileTransfersByContactId(Lcom/gsma/services/rcs/contact/ContactId;)V

    .line 343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    goto/16 :goto_0

    .line 333
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    :pswitch_a
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->deleteGroupFileTransfers()V

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    goto/16 :goto_0

    .line 327
    :pswitch_b
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->deleteOneToOneFileTransfers()V

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    goto/16 :goto_0

    .line 319
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    move-result-object v2

    .line 320
    .local v2, "_arg0":Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->removeGroupFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    goto/16 :goto_0

    .line 310
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    move-result-object v2

    .line 311
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->addGroupFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    goto/16 :goto_0

    .line 301
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;

    move-result-object v2

    .line 302
    .local v2, "_arg0":Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->removeOneToOneFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    goto/16 :goto_0

    .line 292
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;

    move-result-object v2

    .line 293
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->addOneToOneFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    goto/16 :goto_0

    .line 283
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->markFileTransferAsRead(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    goto/16 :goto_0

    .line 267
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 269
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 271
    .local v3, "_arg1":Landroid/net/Uri;
    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    .line 273
    .local v4, "_arg2":Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 274
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->transferFileToGroupChat(Ljava/lang/String;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object v6

    .line 276
    .local v6, "_result":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 278
    goto/16 :goto_0

    .line 257
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/Uri;
    .end local v4    # "_arg2":Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    .end local v5    # "_arg3":Z
    .end local v6    # "_result":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 258
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->canTransferFileToGroupChat(Ljava/lang/String;)Z

    move-result v3

    .line 260
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 262
    goto/16 :goto_0

    .line 247
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_13
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 248
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->isAllowedTotransferFile(Lcom/gsma/services/rcs/contact/ContactId;)Z

    move-result v3

    .line 250
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 252
    goto/16 :goto_0

    .line 235
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_result":Z
    :pswitch_14
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 237
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 238
    .local v3, "_arg1":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v2, v3}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->transferAudioMessage(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object v4

    .line 240
    .local v4, "_result":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 242
    goto/16 :goto_0

    .line 219
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_arg1":Landroid/net/Uri;
    .end local v4    # "_result":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    :pswitch_15
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 221
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 223
    .restart local v3    # "_arg1":Landroid/net/Uri;
    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    .line 225
    .local v4, "_arg2":Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 226
    .restart local v5    # "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->transferFile(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object v6

    .line 228
    .restart local v6    # "_result":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 230
    goto :goto_0

    .line 209
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_arg1":Landroid/net/Uri;
    .end local v4    # "_arg2":Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    .end local v5    # "_arg3":Z
    .end local v6    # "_result":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->getFileTransfer(Ljava/lang/String;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object v3

    .line 212
    .local v3, "_result":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 214
    goto :goto_0

    .line 201
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    :pswitch_17
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->getFileTransfers()Ljava/util/List;

    move-result-object v2

    .line 202
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 204
    goto :goto_0

    .line 194
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :pswitch_18
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->getConfiguration()Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    move-result-object v2

    .line 195
    .local v2, "_result":Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 197
    goto :goto_0

    .line 186
    .end local v2    # "_result":Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v2

    .line 187
    .local v2, "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    goto :goto_0

    .line 177
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v2

    .line 178
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    goto :goto_0

    .line 169
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    :pswitch_1b
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->getServiceVersion()I

    move-result v2

    .line 170
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    goto :goto_0

    .line 162
    .end local v2    # "_result":I
    :pswitch_1c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->isServiceRegistered()Z

    move-result v2

    .line 163
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 165
    nop

    .line 434
    .end local v2    # "_result":Z
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
