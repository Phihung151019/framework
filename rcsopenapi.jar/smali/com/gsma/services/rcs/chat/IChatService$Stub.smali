.class public abstract Lcom/gsma/services/rcs/chat/IChatService$Stub;
.super Landroid/os/Binder;
.source "IChatService.java"

# interfaces
.implements Lcom/gsma/services/rcs/chat/IChatService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/IChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/IChatService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addEventListener:I = 0x2

.field static final TRANSACTION_addGroupChatEventListener:I = 0x11

.field static final TRANSACTION_addOneToOneChatEventListener:I = 0x13

.field static final TRANSACTION_canInitiateGroupChat:I = 0x7

.field static final TRANSACTION_clearMessageDeliveryExpiration:I = 0x18

.field static final TRANSACTION_deleteGroupChat:I = 0xe

.field static final TRANSACTION_deleteGroupChats:I = 0xc

.field static final TRANSACTION_deleteMessage:I = 0xf

.field static final TRANSACTION_deleteOneToOneChat:I = 0xd

.field static final TRANSACTION_deleteOneToOneChats:I = 0xb

.field static final TRANSACTION_getChatMessage:I = 0x10

.field static final TRANSACTION_getConfiguration:I = 0x4

.field static final TRANSACTION_getGroupChat:I = 0x9

.field static final TRANSACTION_getOneToOneChat:I = 0x5

.field static final TRANSACTION_getServiceVersion:I = 0x19

.field static final TRANSACTION_getUndeliveredMessages:I = 0x16

.field static final TRANSACTION_initiateGroupChat:I = 0x8

.field static final TRANSACTION_isAllowedToInitiateGroupChat:I = 0x6

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_markMessageAsRead:I = 0xa

.field static final TRANSACTION_markUndeliveredMessagesAsProcessed:I = 0x17

.field static final TRANSACTION_removeEventListener:I = 0x3

.field static final TRANSACTION_removeGroupChatEventListener:I = 0x12

.field static final TRANSACTION_removeOneToOneChatEventListener:I = 0x14

.field static final TRANSACTION_setRespondToDisplayReports:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 113
    const-string v0, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IChatService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 121
    if-nez p0, :cond_0

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_0
    const-string v0, "com.gsma.services.rcs.chat.IChatService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 125
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v1, :cond_1

    .line 126
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/chat/IChatService;

    return-object v1

    .line 128
    :cond_1
    new-instance v1, Lcom/gsma/services/rcs/chat/IChatService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/chat/IChatService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 132
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    const-string v0, "com.gsma.services.rcs.chat.IChatService"

    .line 137
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 138
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 141
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    return v1

    .line 144
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 367
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 360
    :pswitch_0
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->getServiceVersion()I

    move-result v2

    .line 361
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    goto/16 :goto_0

    .line 352
    .end local v2    # "_result":I
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 353
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->clearMessageDeliveryExpiration(Ljava/util/List;)V

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    goto/16 :goto_0

    .line 343
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 344
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->markUndeliveredMessagesAsProcessed(Ljava/util/List;)V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    goto/16 :goto_0

    .line 333
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 334
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->getUndeliveredMessages(Lcom/gsma/services/rcs/contact/ContactId;)Ljava/util/List;

    move-result-object v3

    .line 336
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 338
    goto/16 :goto_0

    .line 324
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 325
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->setRespondToDisplayReports(Z)V

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    goto/16 :goto_0

    .line 315
    .end local v2    # "_arg0":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IOneToOneChatListener;

    move-result-object v2

    .line 316
    .local v2, "_arg0":Lcom/gsma/services/rcs/chat/IOneToOneChatListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->removeOneToOneChatEventListener(Lcom/gsma/services/rcs/chat/IOneToOneChatListener;)V

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    goto/16 :goto_0

    .line 306
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/chat/IOneToOneChatListener;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IOneToOneChatListener;

    move-result-object v2

    .line 307
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/chat/IOneToOneChatListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->addOneToOneChatEventListener(Lcom/gsma/services/rcs/chat/IOneToOneChatListener;)V

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    goto/16 :goto_0

    .line 297
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/chat/IOneToOneChatListener;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IGroupChatListener;

    move-result-object v2

    .line 298
    .local v2, "_arg0":Lcom/gsma/services/rcs/chat/IGroupChatListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->removeGroupChatEventListener(Lcom/gsma/services/rcs/chat/IGroupChatListener;)V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    goto/16 :goto_0

    .line 288
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/chat/IGroupChatListener;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IGroupChatListener;

    move-result-object v2

    .line 289
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/chat/IGroupChatListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->addGroupChatEventListener(Lcom/gsma/services/rcs/chat/IGroupChatListener;)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    goto/16 :goto_0

    .line 278
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/chat/IGroupChatListener;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->getChatMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IChatMessage;

    move-result-object v3

    .line 281
    .local v3, "_result":Lcom/gsma/services/rcs/chat/IChatMessage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 283
    goto/16 :goto_0

    .line 269
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/gsma/services/rcs/chat/IChatMessage;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 270
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->deleteMessage(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    goto/16 :goto_0

    .line 260
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 261
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->deleteGroupChat(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    goto/16 :goto_0

    .line 251
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_c
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 252
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->deleteOneToOneChat(Lcom/gsma/services/rcs/contact/ContactId;)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    goto/16 :goto_0

    .line 244
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    :pswitch_d
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->deleteGroupChats()V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    goto/16 :goto_0

    .line 238
    :pswitch_e
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->deleteOneToOneChats()V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    goto/16 :goto_0

    .line 230
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->markMessageAsRead(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    goto/16 :goto_0

    .line 220
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 221
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->getGroupChat(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IGroupChat;

    move-result-object v3

    .line 223
    .local v3, "_result":Lcom/gsma/services/rcs/chat/IGroupChat;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 225
    goto/16 :goto_0

    .line 208
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/gsma/services/rcs/chat/IGroupChat;
    :pswitch_11
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 210
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/ContactId;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v2, v3}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->initiateGroupChat(Ljava/util/List;Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IGroupChat;

    move-result-object v4

    .line 213
    .local v4, "_result":Lcom/gsma/services/rcs/chat/IGroupChat;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 215
    goto/16 :goto_0

    .line 198
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/ContactId;>;"
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Lcom/gsma/services/rcs/chat/IGroupChat;
    :pswitch_12
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 199
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->canInitiateGroupChat(Lcom/gsma/services/rcs/contact/ContactId;)Z

    move-result v3

    .line 201
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 203
    goto :goto_0

    .line 190
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_result":Z
    :pswitch_13
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->isAllowedToInitiateGroupChat()Z

    move-result v2

    .line 191
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 193
    goto :goto_0

    .line 181
    .end local v2    # "_result":Z
    :pswitch_14
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 182
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->getOneToOneChat(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/chat/IOneToOneChat;

    move-result-object v3

    .line 184
    .local v3, "_result":Lcom/gsma/services/rcs/chat/IOneToOneChat;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 186
    goto :goto_0

    .line 173
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_result":Lcom/gsma/services/rcs/chat/IOneToOneChat;
    :pswitch_15
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->getConfiguration()Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    move-result-object v2

    .line 174
    .local v2, "_result":Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 176
    goto :goto_0

    .line 165
    .end local v2    # "_result":Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v2

    .line 166
    .local v2, "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    goto :goto_0

    .line 156
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v2

    .line 157
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    goto :goto_0

    .line 148
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    :pswitch_18
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->isServiceRegistered()Z

    move-result v2

    .line 149
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 151
    nop

    .line 370
    .end local v2    # "_result":Z
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
