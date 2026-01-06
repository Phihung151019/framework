.class public Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;
.super Ljava/lang/Object;
.source "SemCaptureParameter.java"


# instance fields
.field public final mKey:Landroid/hardware/camera2/CaptureRequest$Key;

.field public final mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 22
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;->mKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 24
    iput-object p2, p0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;->mValue:Ljava/lang/Object;

    .line 25
    return-void
.end method
