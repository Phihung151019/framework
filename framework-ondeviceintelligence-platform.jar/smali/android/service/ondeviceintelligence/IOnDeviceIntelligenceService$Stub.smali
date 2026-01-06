.class public abstract Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;
.super Landroid/os/Binder;
.source "IOnDeviceIntelligenceService.java"

# interfaces
.implements Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getFeature:I = 0x2

.field static final blacklist TRANSACTION_getFeatureDetails:I = 0x4

.field static final blacklist TRANSACTION_getReadOnlyFeatureFileDescriptorMap:I = 0x6

.field static final blacklist TRANSACTION_getReadOnlyFileDescriptor:I = 0x5

.field static final blacklist TRANSACTION_getVersion:I = 0x1

.field static final blacklist TRANSACTION_listFeatures:I = 0x3

.field static final blacklist TRANSACTION_notifyInferenceServiceConnected:I = 0x9

.field static final blacklist TRANSACTION_notifyInferenceServiceDisconnected:I = 0xa

.field static final blacklist TRANSACTION_ready:I = 0xb

.field static final blacklist TRANSACTION_registerRemoteServices:I = 0x8

.field static final blacklist TRANSACTION_requestFeatureDownload:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "android.service.ondeviceintelligence.IOnDeviceIntelligenceService"

    invoke-virtual {p0, p0, v0}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_0
    const-string v0, "android.service.ondeviceintelligence.IOnDeviceIntelligenceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;

    if-eqz v1, :cond_1

    .line 78
    move-object v1, v0

    check-cast v1, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;

    return-object v1

    .line 80
    :cond_1
    new-instance v1, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 89
    packed-switch p0, :pswitch_data_0

    .line 137
    const/4 v0, 0x0

    return-object v0

    .line 133
    :pswitch_0
    const-string v0, "ready"

    return-object v0

    .line 129
    :pswitch_1
    const-string v0, "notifyInferenceServiceDisconnected"

    return-object v0

    .line 125
    :pswitch_2
    const-string v0, "notifyInferenceServiceConnected"

    return-object v0

    .line 121
    :pswitch_3
    const-string v0, "registerRemoteServices"

    return-object v0

    .line 117
    :pswitch_4
    const-string v0, "requestFeatureDownload"

    return-object v0

    .line 113
    :pswitch_5
    const-string v0, "getReadOnlyFeatureFileDescriptorMap"

    return-object v0

    .line 109
    :pswitch_6
    const-string v0, "getReadOnlyFileDescriptor"

    return-object v0

    .line 105
    :pswitch_7
    const-string v0, "getFeatureDetails"

    return-object v0

    .line 101
    :pswitch_8
    const-string v0, "listFeatures"

    return-object v0

    .line 97
    :pswitch_9
    const-string v0, "getFeature"

    return-object v0

    .line 93
    :pswitch_a
    const-string v0, "getVersion"

    return-object v0

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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 84
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 433
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 144
    invoke-static {p1}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    const-string v0, "android.service.ondeviceintelligence.IOnDeviceIntelligenceService"

    .line 149
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 150
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 153
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    return v1

    .line 156
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 259
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 254
    :pswitch_0
    invoke-virtual {p0}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->ready()V

    .line 255
    goto/16 :goto_0

    .line 249
    :pswitch_1
    invoke-virtual {p0}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->notifyInferenceServiceDisconnected()V

    .line 250
    goto/16 :goto_0

    .line 244
    :pswitch_2
    invoke-virtual {p0}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->notifyInferenceServiceConnected()V

    .line 245
    goto/16 :goto_0

    .line 237
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/ondeviceintelligence/IRemoteProcessingService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/ondeviceintelligence/IRemoteProcessingService;

    move-result-object v2

    .line 238
    .local v2, "_arg0":Landroid/service/ondeviceintelligence/IRemoteProcessingService;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v2}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->registerRemoteServices(Landroid/service/ondeviceintelligence/IRemoteProcessingService;)V

    .line 240
    goto/16 :goto_0

    .line 223
    .end local v2    # "_arg0":Landroid/service/ondeviceintelligence/IRemoteProcessingService;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 225
    .local v2, "_arg0":I
    sget-object v3, Landroid/app/ondeviceintelligence/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ondeviceintelligence/Feature;

    .line 227
    .local v3, "_arg1":Landroid/app/ondeviceintelligence/Feature;
    sget-object v4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    .line 229
    .local v4, "_arg2":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/ondeviceintelligence/IDownloadCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/IDownloadCallback;

    move-result-object v5

    .line 230
    .local v5, "_arg3":Landroid/app/ondeviceintelligence/IDownloadCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->requestFeatureDownload(ILandroid/app/ondeviceintelligence/Feature;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IDownloadCallback;)V

    .line 232
    goto/16 :goto_0

    .line 213
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/app/ondeviceintelligence/Feature;
    .end local v4    # "_arg2":Lcom/android/internal/infra/AndroidFuture;
    .end local v5    # "_arg3":Landroid/app/ondeviceintelligence/IDownloadCallback;
    :pswitch_5
    sget-object v2, Landroid/app/ondeviceintelligence/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ondeviceintelligence/Feature;

    .line 215
    .local v2, "_arg0":Landroid/app/ondeviceintelligence/Feature;
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 216
    .local v3, "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2, v3}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->getReadOnlyFeatureFileDescriptorMap(Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;)V

    .line 218
    goto :goto_0

    .line 203
    .end local v2    # "_arg0":Landroid/app/ondeviceintelligence/Feature;
    .end local v3    # "_arg1":Landroid/os/RemoteCallback;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    .line 206
    .local v3, "_arg1":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/os/ParcelFileDescriptor;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2, v3}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->getReadOnlyFileDescriptor(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 208
    goto :goto_0

    .line 191
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/os/ParcelFileDescriptor;>;"
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 193
    .local v2, "_arg0":I
    sget-object v3, Landroid/app/ondeviceintelligence/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ondeviceintelligence/Feature;

    .line 195
    .local v3, "_arg1":Landroid/app/ondeviceintelligence/Feature;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/ondeviceintelligence/IFeatureDetailsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;

    move-result-object v4

    .line 196
    .local v4, "_arg2":Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->getFeatureDetails(ILandroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V

    .line 198
    goto :goto_0

    .line 181
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/app/ondeviceintelligence/Feature;
    .end local v4    # "_arg2":Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 183
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ondeviceintelligence/IListFeaturesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/IListFeaturesCallback;

    move-result-object v3

    .line 184
    .local v3, "_arg1":Landroid/app/ondeviceintelligence/IListFeaturesCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2, v3}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->listFeatures(ILandroid/app/ondeviceintelligence/IListFeaturesCallback;)V

    .line 186
    goto :goto_0

    .line 169
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/app/ondeviceintelligence/IListFeaturesCallback;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 171
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 173
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/ondeviceintelligence/IFeatureCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/IFeatureCallback;

    move-result-object v4

    .line 174
    .local v4, "_arg2":Landroid/app/ondeviceintelligence/IFeatureCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->getFeature(IILandroid/app/ondeviceintelligence/IFeatureCallback;)V

    .line 176
    goto :goto_0

    .line 161
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/app/ondeviceintelligence/IFeatureCallback;
    :pswitch_a
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 162
    .local v2, "_arg0":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v2}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;->getVersion(Landroid/os/RemoteCallback;)V

    .line 164
    nop

    .line 262
    .end local v2    # "_arg0":Landroid/os/RemoteCallback;
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
