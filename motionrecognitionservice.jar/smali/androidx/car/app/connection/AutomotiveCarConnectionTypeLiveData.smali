.class final Landroidx/car/app/connection/AutomotiveCarConnectionTypeLiveData;
.super Landroidx/lifecycle/LiveData;
.source "AutomotiveCarConnectionTypeLiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActive()V
    .locals 1

    .line 28
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/car/app/connection/AutomotiveCarConnectionTypeLiveData;->setValue(Ljava/lang/Object;)V

    .line 29
    return-void
.end method
