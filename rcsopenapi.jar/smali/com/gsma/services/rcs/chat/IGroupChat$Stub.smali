.class public abstract Lcom/gsma/services/rcs/chat/IGroupChat$Stub;
.super Landroid/os/Binder;
.source "IGroupChat.java"

# interfaces
.implements Lcom/gsma/services/rcs/chat/IGroupChat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/IGroupChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/IGroupChat$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addParticipants:I = 0xf

.field static final TRANSACTION_canAddListParticipants:I = 0xe

.field static final TRANSACTION_canAddParticipants:I = 0xd

.field static final TRANSACTION_canSendMessage:I = 0x9

.field static final TRANSACTION_getChatId:I = 0x2

.field static final TRANSACTION_getDirection:I = 0x5

.field static final TRANSACTION_getMaxParticipants:I = 0x10

.field static final TRANSACTION_getParticipants:I = 0x4

.field static final TRANSACTION_getReasonCode:I = 0x7

.field static final TRANSACTION_getRemoteContact:I = 0x12

.field static final TRANSACTION_getState:I = 0x6

.field static final TRANSACTION_getSubject:I = 0x3

.field static final TRANSACTION_getTimestamp:I = 0x1

.field static final TRANSACTION_isAllowedToLeave:I = 0x11

.field static final TRANSACTION_leave:I = 0x13

.field static final TRANSACTION_openChat:I = 0x8

.field static final TRANSACTION_sendGeoloc:I = 0xb

.field static final TRANSACTION_sendIsComposingEvent:I = 0xc

.field static final TRANSACTION_sendMessage:I = 0xa

.field static final TRANSACTION_setComposingStatus:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 103
    const-string v0, "com.gsma.services.rcs.chat.IGroupChat"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IGroupChat;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 111
    if-nez p0, :cond_0

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_0
    const-string v0, "com.gsma.services.rcs.chat.IGroupChat"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 115
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/services/rcs/chat/IGroupChat;

    if-eqz v1, :cond_1

    .line 116
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/chat/IGroupChat;

    return-object v1

    .line 118
    :cond_1
    new-instance v1, Lcom/gsma/services/rcs/chat/IGroupChat$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 122
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

    .line 126
    const-string v0, "com.gsma.services.rcs.chat.IGroupChat"

    .line 127
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 128
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 131
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    return v1

    .line 134
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 291
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 283
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 284
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->setComposingStatus(Z)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    goto/16 :goto_0

    .line 276
    .end local v2    # "_arg0":Z
    :pswitch_1
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->leave()V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    goto/16 :goto_0

    .line 269
    :pswitch_2
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->getRemoteContact()Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    goto/16 :goto_0

    .line 262
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->isAllowedToLeave()Z

    move-result v2

    .line 263
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 265
    goto/16 :goto_0

    .line 255
    .end local v2    # "_result":Z
    :pswitch_4
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->getMaxParticipants()I

    move-result v2

    .line 256
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    goto/16 :goto_0

    .line 247
    .end local v2    # "_result":I
    :pswitch_5
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 248
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/ContactId;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->addParticipants(Ljava/util/List;)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    goto/16 :goto_0

    .line 237
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/ContactId;>;"
    :pswitch_6
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 238
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/ContactId;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->canAddListParticipants(Ljava/util/List;)Z

    move-result v3

    .line 240
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 242
    goto/16 :goto_0

    .line 229
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/ContactId;>;"
    .end local v3    # "_result":Z
    :pswitch_7
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->canAddParticipants()Z

    move-result v2

    .line 230
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 232
    goto/16 :goto_0

    .line 221
    .end local v2    # "_result":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 222
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->sendIsComposingEvent(Z)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    goto/16 :goto_0

    .line 211
    .end local v2    # "_arg0":Z
    :pswitch_9
    sget-object v2, Lcom/gsma/services/rcs/Geoloc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/Geoloc;

    .line 212
    .local v2, "_arg0":Lcom/gsma/services/rcs/Geoloc;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->sendGeoloc(Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/chat/IChatMessage;

    move-result-object v3

    .line 214
    .local v3, "_result":Lcom/gsma/services/rcs/chat/IChatMessage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 216
    goto/16 :goto_0

    .line 201
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/Geoloc;
    .end local v3    # "_result":Lcom/gsma/services/rcs/chat/IChatMessage;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->sendMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IChatMessage;

    move-result-object v3

    .line 204
    .restart local v3    # "_result":Lcom/gsma/services/rcs/chat/IChatMessage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 206
    goto :goto_0

    .line 193
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/gsma/services/rcs/chat/IChatMessage;
    :pswitch_b
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->canSendMessage()Z

    move-result v2

    .line 194
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 196
    goto :goto_0

    .line 187
    .end local v2    # "_result":Z
    :pswitch_c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->openChat()V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    goto :goto_0

    .line 180
    :pswitch_d
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->getReasonCode()Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    move-result-object v2

    .line 181
    .local v2, "_result":Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 183
    goto :goto_0

    .line 173
    .end local v2    # "_result":Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;
    :pswitch_e
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->getState()Lcom/gsma/services/rcs/chat/GroupChat$State;

    move-result-object v2

    .line 174
    .local v2, "_result":Lcom/gsma/services/rcs/chat/GroupChat$State;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 176
    goto :goto_0

    .line 166
    .end local v2    # "_result":Lcom/gsma/services/rcs/chat/GroupChat$State;
    :pswitch_f
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->getDirection()I

    move-result v2

    .line 167
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    goto :goto_0

    .line 159
    .end local v2    # "_result":I
    :pswitch_10
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->getParticipants()Ljava/util/Map;

    move-result-object v2

    .line 160
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 162
    goto :goto_0

    .line 152
    .end local v2    # "_result":Ljava/util/Map;
    :pswitch_11
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->getSubject()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    goto :goto_0

    .line 145
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_12
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->getChatId()Ljava/lang/String;

    move-result-object v2

    .line 146
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    goto :goto_0

    .line 138
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_13
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->getTimestamp()J

    move-result-wide v2

    .line 139
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    nop

    .line 294
    .end local v2    # "_result":J
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
