.class public abstract Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;
.super Landroid/os/Binder;
.source "IFileUploadService.java"

# interfaces
.implements Lcom/gsma/services/rcs/upload/IFileUploadService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/upload/IFileUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/upload/IFileUploadService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addEventListener:I = 0x2

.field static final TRANSACTION_addFileUploadEventListener:I = 0xa

.field static final TRANSACTION_canUploadFile:I = 0x6

.field static final TRANSACTION_getConfiguration:I = 0x5

.field static final TRANSACTION_getFileUpload:I = 0x8

.field static final TRANSACTION_getFileUploads:I = 0x7

.field static final TRANSACTION_getServiceVersion:I = 0x4

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_removeEventListener:I = 0x3

.field static final TRANSACTION_removeFileUploadEventListener:I = 0xb

.field static final TRANSACTION_uploadFile:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 68
    const-string v0, "com.gsma.services.rcs.upload.IFileUploadService"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/upload/IFileUploadService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 76
    if-nez p0, :cond_0

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_0
    const-string v0, "com.gsma.services.rcs.upload.IFileUploadService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 80
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-eqz v1, :cond_1

    .line 81
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/upload/IFileUploadService;

    return-object v1

    .line 83
    :cond_1
    new-instance v1, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 87
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

    .line 91
    const-string v0, "com.gsma.services.rcs.upload.IFileUploadService"

    .line 92
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 93
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 96
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v1

    .line 99
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 188
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/upload/IFileUploadListener;

    move-result-object v2

    .line 189
    .local v2, "_arg0":Lcom/gsma/services/rcs/upload/IFileUploadListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->removeFileUploadEventListener(Lcom/gsma/services/rcs/upload/IFileUploadListener;)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto/16 :goto_0

    .line 179
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/upload/IFileUploadListener;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/upload/IFileUploadListener;

    move-result-object v2

    .line 180
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/upload/IFileUploadListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->addFileUploadEventListener(Lcom/gsma/services/rcs/upload/IFileUploadListener;)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    goto/16 :goto_0

    .line 167
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/upload/IFileUploadListener;
    :pswitch_2
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 169
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 170
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2, v3}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->uploadFile(Landroid/net/Uri;Z)Lcom/gsma/services/rcs/upload/IFileUpload;

    move-result-object v4

    .line 172
    .local v4, "_result":Lcom/gsma/services/rcs/upload/IFileUpload;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 174
    goto :goto_0

    .line 157
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Lcom/gsma/services/rcs/upload/IFileUpload;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->getFileUpload(Ljava/lang/String;)Lcom/gsma/services/rcs/upload/IFileUpload;

    move-result-object v3

    .line 160
    .local v3, "_result":Lcom/gsma/services/rcs/upload/IFileUpload;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 162
    goto :goto_0

    .line 149
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/gsma/services/rcs/upload/IFileUpload;
    :pswitch_4
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->getFileUploads()Ljava/util/List;

    move-result-object v2

    .line 150
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 152
    goto :goto_0

    .line 142
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :pswitch_5
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->canUploadFile()Z

    move-result v2

    .line 143
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 145
    goto :goto_0

    .line 135
    .end local v2    # "_result":Z
    :pswitch_6
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->getConfiguration()Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;

    move-result-object v2

    .line 136
    .local v2, "_result":Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 138
    goto :goto_0

    .line 128
    .end local v2    # "_result":Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;
    :pswitch_7
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->getServiceVersion()I

    move-result v2

    .line 129
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    goto :goto_0

    .line 120
    .end local v2    # "_result":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v2

    .line 121
    .local v2, "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    goto :goto_0

    .line 111
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v2

    .line 112
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 113
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    goto :goto_0

    .line 103
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    :pswitch_a
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->isServiceRegistered()Z

    move-result v2

    .line 104
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 106
    nop

    .line 199
    .end local v2    # "_result":Z
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
