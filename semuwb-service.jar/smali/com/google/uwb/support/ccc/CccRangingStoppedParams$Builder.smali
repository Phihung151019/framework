.class public Lcom/google/uwb/support/ccc/CccRangingStoppedParams$Builder;
.super Ljava/lang/Object;
.source "CccRangingStoppedParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/ccc/CccRangingStoppedParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mLastStsIndexUsed:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/uwb/support/ccc/CccRangingStoppedParams$Builder;->mLastStsIndexUsed:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/uwb/support/ccc/CccRangingStoppedParams$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccRangingStoppedParams$Builder;

    .line 83
    iget v0, p0, Lcom/google/uwb/support/ccc/CccRangingStoppedParams$Builder;->mLastStsIndexUsed:I

    return v0
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/ccc/CccRangingStoppedParams;
    .locals 2

    .line 92
    new-instance v0, Lcom/google/uwb/support/ccc/CccRangingStoppedParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/uwb/support/ccc/CccRangingStoppedParams;-><init>(Lcom/google/uwb/support/ccc/CccRangingStoppedParams$Builder;Lcom/google/uwb/support/ccc/CccRangingStoppedParams$1;)V

    return-object v0
.end method

.method public setLastStsIndexUsed(I)Lcom/google/uwb/support/ccc/CccRangingStoppedParams$Builder;
    .locals 0
    .param p1, "lastStsIndexUsed"    # I

    .line 87
    iput p1, p0, Lcom/google/uwb/support/ccc/CccRangingStoppedParams$Builder;->mLastStsIndexUsed:I

    .line 88
    return-object p0
.end method
