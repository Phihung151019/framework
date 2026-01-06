.class public abstract Lcom/samsung/android/camerasdkservice/ICameraSDKService$Stub;
.super Landroid/os/Binder;
.source "ICameraSDKService.java"

# interfaces
.implements Lcom/samsung/android/camerasdkservice/ICameraSDKService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerasdkservice/ICameraSDKService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerasdkservice/ICameraSDKService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_SALogInsert:I = 0x5

.field static final TRANSACTION_abortNightCaptureProcess:I = 0x7

.field static final TRANSACTION_deInitialize:I = 0x2

.field static final TRANSACTION_disableEngine:I = 0xc

.field static final TRANSACTION_enableEngine:I = 0xb

.field static final TRANSACTION_getCurrentSystemSelfieTone:I = 0xe

.field static final TRANSACTION_getServicePictureSurface:I = 0x4

.field static final TRANSACTION_getServicePreviewSurface:I = 0x3

.field static final TRANSACTION_initialize:I = 0x1

.field static final TRANSACTION_prepareCaptureProcess:I = 0x6

.field static final TRANSACTION_prepareImageCaptureResult:I = 0x8

.field static final TRANSACTION_preparePreviewCaptureResult:I = 0x9

.field static final TRANSACTION_setProcessorParameter:I = 0xa

.field static final TRANSACTION_updateEngineParameters:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 72
    const-string v0, "com.samsung.android.camerasdkservice.ICameraSDKService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/camerasdkservice/ICameraSDKService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 80
    if-nez p0, :cond_0

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_0
    const-string v0, "com.samsung.android.camerasdkservice.ICameraSDKService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 84
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    if-eqz v1, :cond_1

    .line 85
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    return-object v1

    .line 87
    :cond_1
    new-instance v1, Lcom/samsung/android/camerasdkservice/ICameraSDKService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/camerasdkservice/ICameraSDKService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 91
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    const-string v6, "com.samsung.android.camerasdkservice.ICameraSDKService"

    .line 96
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_0

    const v1, 0xffffff

    if-gt p1, v1, :cond_0

    .line 97
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    :cond_0
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_1

    .line 100
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v7

    .line 103
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 274
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 265
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 266
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {p0, v1}, Lcom/samsung/android/camerasdkservice/ICameraSDKService$Stub;->getCurrentSystemSelfieTone(Landroid/os/IBinder;)I

    move-result v2

    .line 268
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    goto/16 :goto_0

    .line 254
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":I
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 256
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 257
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/camerasdkservice/ICameraSDKService$Stub;->updateEngineParameters(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    goto/16 :goto_0

    .line 243
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 245
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 246
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/camerasdkservice/ICameraSDKService$Stub;->disableEngine(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    goto/16 :goto_0

    .line 232
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 234
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 235
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/camerasdkservice/ICameraSDKService$Stub;->enableEngine(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    goto/16 :goto_0

    .line 221
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 223
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;

    .line 224
    .local v2, "_arg1":Lcom/samsung/android/camerasdkservice/data/ProcessParameters;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/camerasdkservice/ICameraSDKService$Stub;->setProcessorParameter(Landroid/os/IBinder;Lcom/samsung/android/camerasdkservice/data/ProcessParameters;)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    goto/16 :goto_0

    .line 210
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Lcom/samsung/android/camerasdkservice/data/ProcessParameters;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 212
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;

    .line 213
    .local v2, "_arg1":Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/camerasdkservice/ICameraSDKService$Stub;->preparePreviewCaptureResult(Landroid/os/IBinder;Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    goto/16 :goto_0

    .line 197
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 199
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 201
    .local v2, "_arg1":I
    sget-object v3, Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;

    .line 202
    .local v3, "_arg2":Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/camerasdkservice/ICameraSDKService$Stub;->prepareImageCaptureResult(Landroid/os/IBinder;ILcom/samsung/android/camerasdkservice/data/CaptureResultConfig;)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    goto/16 :goto_0

    .line 188
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 189
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v1}, Lcom/samsung/android/camerasdkservice/ICameraSDKService$Stub;->abortNightCaptureProcess(Landroid/os/IBinder;)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto/16 :goto_0

    .line 173
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 175
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;

    .line 177
    .local v2, "_arg1":Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 179
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 180
    .local v4, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/camerasdkservice/ICameraSDKService$Stub;->prepareCaptureProcess(Landroid/os/IBinder;Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;IZ)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    goto/16 :goto_0

    .line 156
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 158
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 162
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "_arg3":Ljava/lang/String;
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 165
    .local v5, "_arg4":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camerasdkservice/ICameraSDKService$Stub;->SALogInsert(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    goto :goto_0

    .line 140
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 142
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 144
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 146
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 147
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/camerasdkservice/ICameraSDKService$Stub;->getServicePictureSurface(Landroid/os/IBinder;III)Landroid/view/Surface;

    move-result-object v5

    .line 149
    .local v5, "_result":Landroid/view/Surface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v5, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 151
    goto :goto_0

    .line 130
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Landroid/view/Surface;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 131
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, v1}, Lcom/samsung/android/camerasdkservice/ICameraSDKService$Stub;->getServicePreviewSurface(Landroid/os/IBinder;)Landroid/view/Surface;

    move-result-object v2

    .line 133
    .local v2, "_result":Landroid/view/Surface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 135
    goto :goto_0

    .line 121
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Landroid/view/Surface;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 122
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v1}, Lcom/samsung/android/camerasdkservice/ICameraSDKService$Stub;->deInitialize(Landroid/os/IBinder;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    goto :goto_0

    .line 108
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 110
    .local v1, "_arg0":I
    sget-object v2, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;

    .line 112
    .local v2, "_arg1":Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 113
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/camerasdkservice/ICameraSDKService$Stub;->initialize(ILcom/samsung/android/camerasdkservice/data/SInitializeConfig;Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    nop

    .line 277
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/samsung/android/camerasdkservice/data/SInitializeConfig;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :goto_0
    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
