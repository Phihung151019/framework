.class public abstract Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;
.super Landroid/os/Binder;
.source "IFileTransfer.java"

# interfaces
.implements Lcom/gsma/services/rcs/filetransfer/IFileTransfer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abortTransfer:I = 0x12

.field static final TRANSACTION_acceptInvitation:I = 0x10

.field static final TRANSACTION_canPauseTransfer:I = 0x13

.field static final TRANSACTION_canResendTransfer:I = 0x16

.field static final TRANSACTION_getChatId:I = 0x2

.field static final TRANSACTION_getDirection:I = 0xf

.field static final TRANSACTION_getFile:I = 0xa

.field static final TRANSACTION_getFileDisposition:I = 0xb

.field static final TRANSACTION_getFileExpiration:I = 0x1a

.field static final TRANSACTION_getFileIcon:I = 0x8

.field static final TRANSACTION_getFileIconExpiration:I = 0x1b

.field static final TRANSACTION_getFileIconMimeType:I = 0x9

.field static final TRANSACTION_getFileName:I = 0x5

.field static final TRANSACTION_getFileSize:I = 0x6

.field static final TRANSACTION_getFileType:I = 0x7

.field static final TRANSACTION_getMimeType:I = 0xc

.field static final TRANSACTION_getReasonCode:I = 0xe

.field static final TRANSACTION_getRemoteContact:I = 0x4

.field static final TRANSACTION_getState:I = 0xd

.field static final TRANSACTION_getTimestamp:I = 0x18

.field static final TRANSACTION_getTimestampDelivered:I = 0x1d

.field static final TRANSACTION_getTimestampDisplayed:I = 0x1e

.field static final TRANSACTION_getTimestampSent:I = 0x19

.field static final TRANSACTION_getTransferId:I = 0x3

.field static final TRANSACTION_isAllowedToResumeTransfer:I = 0x1c

.field static final TRANSACTION_isExpiredDelivery:I = 0x20

.field static final TRANSACTION_isGroupTransfer:I = 0x1

.field static final TRANSACTION_isRead:I = 0x1f

.field static final TRANSACTION_pauseTransfer:I = 0x14

.field static final TRANSACTION_rejectInvitation:I = 0x11

.field static final TRANSACTION_resendTransfer:I = 0x17

.field static final TRANSACTION_resumeTransfer:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 149
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 150
    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransfer"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 158
    if-nez p0, :cond_0

    .line 159
    const/4 v0, 0x0

    return-object v0

    .line 161
    :cond_0
    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransfer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 162
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    if-eqz v1, :cond_1

    .line 163
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    return-object v1

    .line 165
    :cond_1
    new-instance v1, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 169
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransfer"

    .line 174
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 175
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 178
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    return v1

    .line 181
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 403
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 396
    :pswitch_0
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->isExpiredDelivery()Z

    move-result v2

    .line 397
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 399
    goto/16 :goto_0

    .line 389
    .end local v2    # "_result":Z
    :pswitch_1
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->isRead()Z

    move-result v2

    .line 390
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 392
    goto/16 :goto_0

    .line 382
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getTimestampDisplayed()J

    move-result-wide v2

    .line 383
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 385
    goto/16 :goto_0

    .line 375
    .end local v2    # "_result":J
    :pswitch_3
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getTimestampDelivered()J

    move-result-wide v2

    .line 376
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 378
    goto/16 :goto_0

    .line 368
    .end local v2    # "_result":J
    :pswitch_4
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->isAllowedToResumeTransfer()Z

    move-result v2

    .line 369
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 371
    goto/16 :goto_0

    .line 361
    .end local v2    # "_result":Z
    :pswitch_5
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getFileIconExpiration()J

    move-result-wide v2

    .line 362
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 364
    goto/16 :goto_0

    .line 354
    .end local v2    # "_result":J
    :pswitch_6
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getFileExpiration()J

    move-result-wide v2

    .line 355
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 357
    goto/16 :goto_0

    .line 347
    .end local v2    # "_result":J
    :pswitch_7
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getTimestampSent()J

    move-result-wide v2

    .line 348
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 350
    goto/16 :goto_0

    .line 340
    .end local v2    # "_result":J
    :pswitch_8
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getTimestamp()J

    move-result-wide v2

    .line 341
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 343
    goto/16 :goto_0

    .line 334
    .end local v2    # "_result":J
    :pswitch_9
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->resendTransfer()V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    goto/16 :goto_0

    .line 327
    :pswitch_a
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->canResendTransfer()Z

    move-result v2

    .line 328
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 330
    goto/16 :goto_0

    .line 321
    .end local v2    # "_result":Z
    :pswitch_b
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->resumeTransfer()V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    goto/16 :goto_0

    .line 315
    :pswitch_c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->pauseTransfer()V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    goto/16 :goto_0

    .line 308
    :pswitch_d
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->canPauseTransfer()Z

    move-result v2

    .line 309
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 311
    goto/16 :goto_0

    .line 302
    .end local v2    # "_result":Z
    :pswitch_e
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->abortTransfer()V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    goto/16 :goto_0

    .line 296
    :pswitch_f
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->rejectInvitation()V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    goto/16 :goto_0

    .line 290
    :pswitch_10
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->acceptInvitation()V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    goto/16 :goto_0

    .line 283
    :pswitch_11
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getDirection()I

    move-result v2

    .line 284
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    goto/16 :goto_0

    .line 276
    .end local v2    # "_result":I
    :pswitch_12
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getReasonCode()Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    move-result-object v2

    .line 277
    .local v2, "_result":Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 279
    goto/16 :goto_0

    .line 269
    .end local v2    # "_result":Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    :pswitch_13
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getState()Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    move-result-object v2

    .line 270
    .local v2, "_result":Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 272
    goto/16 :goto_0

    .line 262
    .end local v2    # "_result":Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    :pswitch_14
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    goto/16 :goto_0

    .line 255
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_15
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getFileDisposition()Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    move-result-object v2

    .line 256
    .local v2, "_result":Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 258
    goto/16 :goto_0

    .line 248
    .end local v2    # "_result":Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    :pswitch_16
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getFile()Landroid/net/Uri;

    move-result-object v2

    .line 249
    .local v2, "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 251
    goto :goto_0

    .line 241
    .end local v2    # "_result":Landroid/net/Uri;
    :pswitch_17
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getFileIconMimeType()Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    goto :goto_0

    .line 234
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_18
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getFileIcon()Landroid/net/Uri;

    move-result-object v2

    .line 235
    .local v2, "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 237
    goto :goto_0

    .line 227
    .end local v2    # "_result":Landroid/net/Uri;
    :pswitch_19
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getFileType()Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    goto :goto_0

    .line 220
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getFileSize()J

    move-result-wide v2

    .line 221
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 223
    goto :goto_0

    .line 213
    .end local v2    # "_result":J
    :pswitch_1b
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    goto :goto_0

    .line 206
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v2

    .line 207
    .local v2, "_result":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 209
    goto :goto_0

    .line 199
    .end local v2    # "_result":Lcom/gsma/services/rcs/contact/ContactId;
    :pswitch_1d
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getTransferId()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    goto :goto_0

    .line 192
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1e
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getChatId()Ljava/lang/String;

    move-result-object v2

    .line 193
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    goto :goto_0

    .line 185
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1f
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->isGroupTransfer()Z

    move-result v2

    .line 186
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 188
    nop

    .line 406
    .end local v2    # "_result":Z
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
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
