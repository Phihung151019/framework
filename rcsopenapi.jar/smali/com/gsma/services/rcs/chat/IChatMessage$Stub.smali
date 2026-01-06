.class public abstract Lcom/gsma/services/rcs/chat/IChatMessage$Stub;
.super Landroid/os/Binder;
.source "IChatMessage.java"

# interfaces
.implements Lcom/gsma/services/rcs/chat/IChatMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/IChatMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/IChatMessage$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getChatId:I = 0xd

.field static final TRANSACTION_getContact:I = 0x1

.field static final TRANSACTION_getContent:I = 0x3

.field static final TRANSACTION_getDirection:I = 0x6

.field static final TRANSACTION_getId:I = 0x2

.field static final TRANSACTION_getMaapTrafficType:I = 0x5

.field static final TRANSACTION_getMimeType:I = 0x4

.field static final TRANSACTION_getReasonCode:I = 0xc

.field static final TRANSACTION_getStatus:I = 0xb

.field static final TRANSACTION_getTimestamp:I = 0x7

.field static final TRANSACTION_getTimestampDelivered:I = 0x9

.field static final TRANSACTION_getTimestampDisplayed:I = 0xa

.field static final TRANSACTION_getTimestampSent:I = 0x8

.field static final TRANSACTION_isExpiredDelivery:I = 0xf

.field static final TRANSACTION_isRead:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 88
    const-string v0, "com.gsma.services.rcs.chat.IChatMessage"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IChatMessage;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 96
    if-nez p0, :cond_0

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_0
    const-string v0, "com.gsma.services.rcs.chat.IChatMessage"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 100
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v1, :cond_1

    .line 101
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/chat/IChatMessage;

    return-object v1

    .line 103
    :cond_1
    new-instance v1, Lcom/gsma/services/rcs/chat/IChatMessage$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 107
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

    .line 111
    const-string v0, "com.gsma.services.rcs.chat.IChatMessage"

    .line 112
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 113
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 116
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    return v1

    .line 119
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 228
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 221
    :pswitch_0
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->isExpiredDelivery()Z

    move-result v2

    .line 222
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 224
    goto/16 :goto_0

    .line 214
    .end local v2    # "_result":Z
    :pswitch_1
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->isRead()Z

    move-result v2

    .line 215
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 217
    goto/16 :goto_0

    .line 207
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getChatId()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    goto/16 :goto_0

    .line 200
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getReasonCode()I

    move-result v2

    .line 201
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    goto/16 :goto_0

    .line 193
    .end local v2    # "_result":I
    :pswitch_4
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getStatus()I

    move-result v2

    .line 194
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    goto/16 :goto_0

    .line 186
    .end local v2    # "_result":I
    :pswitch_5
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getTimestampDisplayed()J

    move-result-wide v2

    .line 187
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 189
    goto :goto_0

    .line 179
    .end local v2    # "_result":J
    :pswitch_6
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getTimestampDelivered()J

    move-result-wide v2

    .line 180
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 182
    goto :goto_0

    .line 172
    .end local v2    # "_result":J
    :pswitch_7
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getTimestampSent()J

    move-result-wide v2

    .line 173
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 175
    goto :goto_0

    .line 165
    .end local v2    # "_result":J
    :pswitch_8
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getTimestamp()J

    move-result-wide v2

    .line 166
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 168
    goto :goto_0

    .line 158
    .end local v2    # "_result":J
    :pswitch_9
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getDirection()I

    move-result v2

    .line 159
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    goto :goto_0

    .line 151
    .end local v2    # "_result":I
    :pswitch_a
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getMaapTrafficType()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    goto :goto_0

    .line 144
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 145
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    goto :goto_0

    .line 137
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 138
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    goto :goto_0

    .line 130
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_d
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getId()Ljava/lang/String;

    move-result-object v2

    .line 131
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    goto :goto_0

    .line 123
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_e
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v2

    .line 124
    .local v2, "_result":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 126
    nop

    .line 231
    .end local v2    # "_result":Lcom/gsma/services/rcs/contact/ContactId;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
