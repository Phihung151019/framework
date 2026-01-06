.class public abstract Lcom/samsung/android/camerax/advanced/api/IExtensionClient$Stub;
.super Landroid/os/Binder;
.source "IExtensionClient.java"

# interfaces
.implements Lcom/samsung/android/camerax/advanced/api/IExtensionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/api/IExtensionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerax/advanced/api/IExtensionClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_close:I = 0x5

.field static final TRANSACTION_prepareCapture:I = 0x3

.field static final TRANSACTION_preparePreview:I = 0x1

.field static final TRANSACTION_processCaptureImage:I = 0x4

.field static final TRANSACTION_processPreview:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "com.samsung.android.camerax.advanced.api.IExtensionClient"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/camerax/advanced/api/IExtensionClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camerax/advanced/api/IExtensionClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    const-string v0, "com.samsung.android.camerax.advanced.api.IExtensionClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/camerax/advanced/api/IExtensionClient;

    if-eqz v1, :cond_1

    .line 55
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/camerax/advanced/api/IExtensionClient;

    return-object v1

    .line 57
    :cond_1
    new-instance v1, Lcom/samsung/android/camerax/advanced/api/IExtensionClient$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/camerax/advanced/api/IExtensionClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 61
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const-string v0, "com.samsung.android.camerax.advanced.api.IExtensionClient"

    .line 66
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 67
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 70
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return v1

    .line 73
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 133
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 127
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/api/IExtensionClient$Stub;->close()V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    move-object v3, p0

    goto/16 :goto_0

    .line 115
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 117
    .local v2, "_arg0":I
    sget-object v3, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;

    .line 119
    .local v3, "_arg1":Lcom/samsung/android/camerax/advanced/api/ExtensionImage;
    sget-object v4, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;

    .line 120
    .local v4, "_arg2":Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/camerax/advanced/api/IExtensionClient$Stub;->processCaptureImage(ILcom/samsung/android/camerax/advanced/api/ExtensionImage;Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    move-object v3, p0

    goto :goto_0

    .line 100
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/samsung/android/camerax/advanced/api/ExtensionImage;
    .end local v4    # "_arg2":Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;
    :pswitch_2
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/hardware/camera2/CaptureRequest;

    .line 102
    .local v4, "_arg0":Landroid/hardware/camera2/CaptureRequest;
    sget-object v2, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;

    .line 104
    .local v5, "_arg1":Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 106
    .local v6, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/camerax/advanced/api/IExtensionClientCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camerax/advanced/api/IExtensionClientCallback;

    move-result-object v8

    .line 107
    .local v8, "_arg3":Lcom/samsung/android/camerax/advanced/api/IExtensionClientCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/camerax/advanced/api/IExtensionClient$Stub;->prepareCapture(Landroid/hardware/camera2/CaptureRequest;Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;JLcom/samsung/android/camerax/advanced/api/IExtensionClientCallback;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    goto :goto_0

    .line 89
    .end local v4    # "_arg0":Landroid/hardware/camera2/CaptureRequest;
    .end local v5    # "_arg1":Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":Lcom/samsung/android/camerax/advanced/api/IExtensionClientCallback;
    :pswitch_3
    move-object v3, p0

    sget-object v2, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;

    .line 91
    .local v2, "_arg0":Lcom/samsung/android/camerax/advanced/api/ExtensionImage;
    sget-object v4, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;

    .line 92
    .local v4, "_arg1":Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 93
    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/camerax/advanced/api/IExtensionClient$Stub;->processPreview(Lcom/samsung/android/camerax/advanced/api/ExtensionImage;Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    goto :goto_0

    .line 78
    .end local v2    # "_arg0":Lcom/samsung/android/camerax/advanced/api/ExtensionImage;
    .end local v4    # "_arg1":Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;
    :pswitch_4
    move-object v3, p0

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    .line 80
    .local v2, "_arg0":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/camerax/advanced/api/IExtensionClientCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camerax/advanced/api/IExtensionClientCallback;

    move-result-object v4

    .line 81
    .local v4, "_arg1":Lcom/samsung/android/camerax/advanced/api/IExtensionClientCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 82
    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/camerax/advanced/api/IExtensionClient$Stub;->preparePreview(Landroid/hardware/camera2/CaptureRequest;Lcom/samsung/android/camerax/advanced/api/IExtensionClientCallback;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    nop

    .line 136
    .end local v2    # "_arg0":Landroid/hardware/camera2/CaptureRequest;
    .end local v4    # "_arg1":Lcom/samsung/android/camerax/advanced/api/IExtensionClientCallback;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
