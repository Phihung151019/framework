.class Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$PreScanResultProcessorHolder;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreScanResultProcessorHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$PreScanResultProcessorHolder;->INSTANCE:Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;

    .line 2
    .line 3
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/samsung/android/server/wifi/SemPreScanResultProcessor$PreScanResultProcessorHolder;->INSTANCE:Lcom/samsung/android/server/wifi/SemPreScanResultProcessor;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
