.class public Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MlState"
.end annotation


# instance fields
.field public activeLinkNumber:I

.field public associatedLinkNumber:I

.field public controlMode:I

.field public freqArr:[I

.field public idArr:[I


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
