.class public abstract Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;
.super Landroid/os/Binder;
.source "IMultimediaMessagingSession.java"

# interfaces
.implements Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abortSession:I = 0xa

.field static final TRANSACTION_acceptInvitation:I = 0x7

.field static final TRANSACTION_flushMessages:I = 0xc

.field static final TRANSACTION_getDirection:I = 0x6

.field static final TRANSACTION_getReasonCode:I = 0x5

.field static final TRANSACTION_getRemoteContact:I = 0x2

.field static final TRANSACTION_getServiceId:I = 0x3

.field static final TRANSACTION_getSessionId:I = 0x1

.field static final TRANSACTION_getState:I = 0x4

.field static final TRANSACTION_rejectInvitation:I = 0x8

.field static final TRANSACTION_rejectInvitation2:I = 0x9

.field static final TRANSACTION_sendMessage:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 70
    const-string v0, "com.gsma.services.rcs.extension.IMultimediaMessagingSession"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 78
    if-nez p0, :cond_0

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_0
    const-string v0, "com.gsma.services.rcs.extension.IMultimediaMessagingSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 82
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    if-eqz v1, :cond_1

    .line 83
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    return-object v1

    .line 85
    :cond_1
    new-instance v1, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 89
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

    .line 93
    const-string v0, "com.gsma.services.rcs.extension.IMultimediaMessagingSession"

    .line 94
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 98
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return v1

    .line 101
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 191
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 185
    :pswitch_0
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->flushMessages()V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    goto/16 :goto_0

    .line 175
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 177
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2, v3}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->sendMessage([BLjava/lang/String;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    goto :goto_0

    .line 168
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->abortSession()V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    goto :goto_0

    .line 160
    :pswitch_3
    sget-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 161
    .local v2, "_arg0":Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->rejectInvitation2(Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    goto :goto_0

    .line 153
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    :pswitch_4
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->rejectInvitation()V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    goto :goto_0

    .line 147
    :pswitch_5
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->acceptInvitation()V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    goto :goto_0

    .line 140
    :pswitch_6
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->getDirection()Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v2

    .line 141
    .local v2, "_result":Lcom/gsma/services/rcs/RcsService$Direction;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 143
    goto :goto_0

    .line 133
    .end local v2    # "_result":Lcom/gsma/services/rcs/RcsService$Direction;
    :pswitch_7
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->getReasonCode()Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    move-result-object v2

    .line 134
    .local v2, "_result":Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 136
    goto :goto_0

    .line 126
    .end local v2    # "_result":Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    :pswitch_8
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->getState()Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    move-result-object v2

    .line 127
    .local v2, "_result":Lcom/gsma/services/rcs/extension/MultimediaSession$State;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 129
    goto :goto_0

    .line 119
    .end local v2    # "_result":Lcom/gsma/services/rcs/extension/MultimediaSession$State;
    :pswitch_9
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->getServiceId()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    goto :goto_0

    .line 112
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v2

    .line 113
    .local v2, "_result":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 115
    goto :goto_0

    .line 105
    .end local v2    # "_result":Lcom/gsma/services/rcs/contact/ContactId;
    :pswitch_b
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->getSessionId()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    nop

    .line 194
    .end local v2    # "_result":Ljava/lang/String;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
