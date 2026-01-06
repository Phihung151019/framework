.class public Lcom/google/uwb/support/aliro/AliroRangingReconfiguredParams$Builder;
.super Ljava/lang/Object;
.source "AliroRangingReconfiguredParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/aliro/AliroRangingReconfiguredParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/aliro/AliroRangingReconfiguredParams;
    .locals 1

    .line 65
    new-instance v0, Lcom/google/uwb/support/aliro/AliroRangingReconfiguredParams;

    invoke-direct {v0}, Lcom/google/uwb/support/aliro/AliroRangingReconfiguredParams;-><init>()V

    return-object v0
.end method
