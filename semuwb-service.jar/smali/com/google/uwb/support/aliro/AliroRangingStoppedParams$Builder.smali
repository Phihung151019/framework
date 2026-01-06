.class public Lcom/google/uwb/support/aliro/AliroRangingStoppedParams$Builder;
.super Ljava/lang/Object;
.source "AliroRangingStoppedParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/aliro/AliroRangingStoppedParams;
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

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStoppedParams$Builder;->mLastStsIndexUsed:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/uwb/support/aliro/AliroRangingStoppedParams$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroRangingStoppedParams$Builder;

    .line 82
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStoppedParams$Builder;->mLastStsIndexUsed:I

    return v0
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/aliro/AliroRangingStoppedParams;
    .locals 2

    .line 91
    new-instance v0, Lcom/google/uwb/support/aliro/AliroRangingStoppedParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/uwb/support/aliro/AliroRangingStoppedParams;-><init>(Lcom/google/uwb/support/aliro/AliroRangingStoppedParams$Builder;Lcom/google/uwb/support/aliro/AliroRangingStoppedParams$1;)V

    return-object v0
.end method

.method public setLastStsIndexUsed(I)Lcom/google/uwb/support/aliro/AliroRangingStoppedParams$Builder;
    .locals 0
    .param p1, "lastStsIndexUsed"    # I

    .line 86
    iput p1, p0, Lcom/google/uwb/support/aliro/AliroRangingStoppedParams$Builder;->mLastStsIndexUsed:I

    .line 87
    return-object p0
.end method
