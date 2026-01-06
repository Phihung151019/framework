.class public abstract Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;
.super Landroid/os/Binder;
.source "IImageSharing.java"

# interfaces
.implements Lcom/gsma/services/rcs/sharing/image/IImageSharing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/image/IImageSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abortSharing:I = 0xd

.field static final TRANSACTION_acceptInvitation:I = 0xb

.field static final TRANSACTION_getDirection:I = 0xa

.field static final TRANSACTION_getFile:I = 0x3

.field static final TRANSACTION_getFileName:I = 0x4

.field static final TRANSACTION_getFileSize:I = 0x5

.field static final TRANSACTION_getFileType:I = 0x6

.field static final TRANSACTION_getReasonCode:I = 0x9

.field static final TRANSACTION_getRemoteContact:I = 0x2

.field static final TRANSACTION_getSharingId:I = 0x1

.field static final TRANSACTION_getState:I = 0x8

.field static final TRANSACTION_getTimeStamp:I = 0x7

.field static final TRANSACTION_rejectInvitation:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 124
    const-string v0, "com.gsma.services.rcs.sharing.image.IImageSharing"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/image/IImageSharing;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 132
    if-nez p0, :cond_0

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_0
    const-string v0, "com.gsma.services.rcs.sharing.image.IImageSharing"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 136
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    if-eqz v1, :cond_1

    .line 137
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    return-object v1

    .line 139
    :cond_1
    new-instance v1, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 143
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

    .line 147
    const-string v0, "com.gsma.services.rcs.sharing.image.IImageSharing"

    .line 148
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 149
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 152
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    return v1

    .line 155
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 247
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 241
    :pswitch_0
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->abortSharing()V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    goto/16 :goto_0

    .line 235
    :pswitch_1
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->rejectInvitation()V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    goto/16 :goto_0

    .line 229
    :pswitch_2
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->acceptInvitation()V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    goto/16 :goto_0

    .line 222
    :pswitch_3
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->getDirection()I

    move-result v2

    .line 223
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    goto :goto_0

    .line 215
    .end local v2    # "_result":I
    :pswitch_4
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->getReasonCode()Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    move-result-object v2

    .line 216
    .local v2, "_result":Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 218
    goto :goto_0

    .line 208
    .end local v2    # "_result":Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
    :pswitch_5
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->getState()Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    move-result-object v2

    .line 209
    .local v2, "_result":Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 211
    goto :goto_0

    .line 201
    .end local v2    # "_result":Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;
    :pswitch_6
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->getTimeStamp()J

    move-result-wide v2

    .line 202
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 204
    goto :goto_0

    .line 194
    .end local v2    # "_result":J
    :pswitch_7
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->getFileType()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    goto :goto_0

    .line 187
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->getFileSize()J

    move-result-wide v2

    .line 188
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 190
    goto :goto_0

    .line 180
    .end local v2    # "_result":J
    :pswitch_9
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    goto :goto_0

    .line 173
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->getFile()Ljava/lang/String;

    move-result-object v2

    .line 174
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    goto :goto_0

    .line 166
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v2

    .line 167
    .local v2, "_result":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 169
    goto :goto_0

    .line 159
    .end local v2    # "_result":Lcom/gsma/services/rcs/contact/ContactId;
    :pswitch_c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->getSharingId()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    nop

    .line 250
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
