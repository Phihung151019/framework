.class public final Landroidx/car/app/media/OpenMicrophoneRequest$Builder;
.super Ljava/lang/Object;
.source "OpenMicrophoneRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/media/OpenMicrophoneRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field final mCarAudioCallbackDelegate:Landroidx/car/app/media/CarAudioCallbackDelegate;


# direct methods
.method public constructor <init>(Landroidx/car/app/media/CarAudioCallback;)V
    .locals 1
    .param p1, "callback"    # Landroidx/car/app/media/CarAudioCallback;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/media/CarAudioCallback;

    invoke-static {v0}, Landroidx/car/app/media/CarAudioCallbackDelegate;->create(Landroidx/car/app/media/CarAudioCallback;)Landroidx/car/app/media/CarAudioCallbackDelegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/media/OpenMicrophoneRequest$Builder;->mCarAudioCallbackDelegate:Landroidx/car/app/media/CarAudioCallbackDelegate;

    .line 66
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/media/OpenMicrophoneRequest;
    .locals 1

    .line 73
    new-instance v0, Landroidx/car/app/media/OpenMicrophoneRequest;

    invoke-direct {v0, p0}, Landroidx/car/app/media/OpenMicrophoneRequest;-><init>(Landroidx/car/app/media/OpenMicrophoneRequest$Builder;)V

    return-object v0
.end method
