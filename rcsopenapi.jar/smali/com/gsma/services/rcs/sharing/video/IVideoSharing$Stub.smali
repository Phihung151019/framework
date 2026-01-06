.class public abstract Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;
.super Landroid/os/Binder;
.source "IVideoSharing.java"

# interfaces
.implements Lcom/gsma/services/rcs/sharing/video/IVideoSharing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/video/IVideoSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abortSharing:I = 0x8

.field static final TRANSACTION_acceptInvitation:I = 0x6

.field static final TRANSACTION_getDirection:I = 0x5

.field static final TRANSACTION_getDuration:I = 0xb

.field static final TRANSACTION_getReasonCode:I = 0xd

.field static final TRANSACTION_getRemoteContact:I = 0x2

.field static final TRANSACTION_getSharingId:I = 0x1

.field static final TRANSACTION_getState:I = 0x4

.field static final TRANSACTION_getTimeStamp:I = 0xc

.field static final TRANSACTION_getVideoDescriptor:I = 0x9

.field static final TRANSACTION_getVideoEncoding:I = 0x3

.field static final TRANSACTION_rejectInvitation:I = 0x7

.field static final TRANSACTION_setOrientation:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 76
    const-string v0, "com.gsma.services.rcs.sharing.video.IVideoSharing"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/video/IVideoSharing;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 84
    if-nez p0, :cond_0

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_0
    const-string v0, "com.gsma.services.rcs.sharing.video.IVideoSharing"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 88
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    if-eqz v1, :cond_1

    .line 89
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    return-object v1

    .line 91
    :cond_1
    new-instance v1, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 95
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

    .line 99
    const-string v0, "com.gsma.services.rcs.sharing.video.IVideoSharing"

    .line 100
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 107
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 197
    :pswitch_0
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->getReasonCode()Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    move-result-object v2

    .line 198
    .local v2, "_result":Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 200
    goto/16 :goto_0

    .line 190
    .end local v2    # "_result":Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;
    :pswitch_1
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->getTimeStamp()J

    move-result-wide v2

    .line 191
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 193
    goto/16 :goto_0

    .line 183
    .end local v2    # "_result":J
    :pswitch_2
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->getDuration()J

    move-result-wide v2

    .line 184
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 186
    goto/16 :goto_0

    .line 175
    .end local v2    # "_result":J
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 176
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->setOrientation(I)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    goto :goto_0

    .line 167
    .end local v2    # "_arg0":I
    :pswitch_4
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->getVideoDescriptor()Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;

    move-result-object v2

    .line 168
    .local v2, "_result":Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 170
    goto :goto_0

    .line 161
    .end local v2    # "_result":Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;
    :pswitch_5
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->abortSharing()V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_0

    .line 155
    :pswitch_6
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->rejectInvitation()V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    goto :goto_0

    .line 147
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;

    move-result-object v2

    .line 148
    .local v2, "_arg0":Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->acceptInvitation(Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    goto :goto_0

    .line 139
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;
    :pswitch_8
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->getDirection()Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v2

    .line 140
    .local v2, "_result":Lcom/gsma/services/rcs/RcsService$Direction;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 142
    goto :goto_0

    .line 132
    .end local v2    # "_result":Lcom/gsma/services/rcs/RcsService$Direction;
    :pswitch_9
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->getState()Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    move-result-object v2

    .line 133
    .local v2, "_result":Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 135
    goto :goto_0

    .line 125
    .end local v2    # "_result":Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    :pswitch_a
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->getVideoEncoding()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    goto :goto_0

    .line 118
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->getRemoteContact()Ljava/lang/String;

    move-result-object v2

    .line 119
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    goto :goto_0

    .line 111
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->getSharingId()Ljava/lang/String;

    move-result-object v2

    .line 112
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    nop

    .line 207
    .end local v2    # "_result":Ljava/lang/String;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
