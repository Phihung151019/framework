.class public final Landroidx/car/app/media/OpenMicrophoneResponse$Builder;
.super Ljava/lang/Object;
.source "OpenMicrophoneResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/media/OpenMicrophoneResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field final mCarAudioCallbackDelegate:Landroidx/car/app/media/CarAudioCallbackDelegate;

.field mCarMicrophoneDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Landroidx/car/app/media/CarAudioCallback;)V
    .locals 1
    .param p1, "callback"    # Landroidx/car/app/media/CarAudioCallback;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/media/CarAudioCallback;

    invoke-static {v0}, Landroidx/car/app/media/CarAudioCallbackDelegate;->create(Landroidx/car/app/media/CarAudioCallback;)Landroidx/car/app/media/CarAudioCallbackDelegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/media/OpenMicrophoneResponse$Builder;->mCarAudioCallbackDelegate:Landroidx/car/app/media/CarAudioCallbackDelegate;

    .line 100
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/media/OpenMicrophoneResponse;
    .locals 1

    .line 121
    new-instance v0, Landroidx/car/app/media/OpenMicrophoneResponse;

    invoke-direct {v0, p0}, Landroidx/car/app/media/OpenMicrophoneResponse;-><init>(Landroidx/car/app/media/OpenMicrophoneResponse$Builder;)V

    return-object v0
.end method

.method public setCarMicrophoneDescriptor(Landroid/os/ParcelFileDescriptor;)Landroidx/car/app/media/OpenMicrophoneResponse$Builder;
    .locals 1
    .param p1, "carMicrophoneDescriptor"    # Landroid/os/ParcelFileDescriptor;

    .line 112
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroidx/car/app/media/OpenMicrophoneResponse$Builder;->mCarMicrophoneDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 113
    return-object p0
.end method
