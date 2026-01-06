.class public abstract Lcom/gsma/services/rcs/upload/IFileUpload$Stub;
.super Landroid/os/Binder;
.source "IFileUpload.java"

# interfaces
.implements Lcom/gsma/services/rcs/upload/IFileUpload;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/upload/IFileUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/upload/IFileUpload$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abortUpload:I = 0x5

.field static final TRANSACTION_getFile:I = 0x2

.field static final TRANSACTION_getState:I = 0x4

.field static final TRANSACTION_getUploadId:I = 0x1

.field static final TRANSACTION_getUploadInfo:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "com.gsma.services.rcs.upload.IFileUpload"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/upload/IFileUpload;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_0
    const-string v0, "com.gsma.services.rcs.upload.IFileUpload"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/services/rcs/upload/IFileUpload;

    if-eqz v1, :cond_1

    .line 60
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/upload/IFileUpload;

    return-object v1

    .line 62
    :cond_1
    new-instance v1, Lcom/gsma/services/rcs/upload/IFileUpload$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 66
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    const-string v0, "com.gsma.services.rcs.upload.IFileUpload"

    .line 71
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 72
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 75
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    return v1

    .line 78
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 110
    :pswitch_0
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub;->abortUpload()V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    goto :goto_0

    .line 103
    :pswitch_1
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub;->getState()Lcom/gsma/services/rcs/upload/FileUpload$State;

    move-result-object v2

    .line 104
    .local v2, "_result":Lcom/gsma/services/rcs/upload/FileUpload$State;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 106
    goto :goto_0

    .line 96
    .end local v2    # "_result":Lcom/gsma/services/rcs/upload/FileUpload$State;
    :pswitch_2
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub;->getUploadInfo()Lcom/gsma/services/rcs/upload/FileUploadInfo;

    move-result-object v2

    .line 97
    .local v2, "_result":Lcom/gsma/services/rcs/upload/FileUploadInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 99
    goto :goto_0

    .line 89
    .end local v2    # "_result":Lcom/gsma/services/rcs/upload/FileUploadInfo;
    :pswitch_3
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub;->getFile()Landroid/net/Uri;

    move-result-object v2

    .line 90
    .local v2, "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 92
    goto :goto_0

    .line 82
    .end local v2    # "_result":Landroid/net/Uri;
    :pswitch_4
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub;->getUploadId()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    nop

    .line 119
    .end local v2    # "_result":Ljava/lang/String;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
