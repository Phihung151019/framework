.class public final Lcom/samsung/android/wifi/intelligence/ins/spec/ConfigSpec$TestMode;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/intelligence/ins/spec/ConfigSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestMode"
.end annotation


# static fields
.field public static CUSTOM_BATTERY_ACTION_INFER:Ljava/lang/String;

.field public static CUSTOM_BATTERY_ACTION_TRAIN:Ljava/lang/String;

.field public static CUSTOM_BATTERY_VALUE_INFER:I

.field public static CUSTOM_EXTRA_INFER:Ljava/lang/String;

.field public static FLAG_CHECK_HEAT_LEVEL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/wifi/intelligence/ins/spec/ConfigSpec;->-$$Nest$sfgetIS_USER_SHIP()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/samsung/android/wifi/intelligence/ins/spec/ConfigSpec$TestMode;->FLAG_CHECK_HEAT_LEVEL:Z

    .line 6
    .line 7
    const-string v0, "ins.intent.action.train"

    .line 8
    .line 9
    sput-object v0, Lcom/samsung/android/wifi/intelligence/ins/spec/ConfigSpec$TestMode;->CUSTOM_BATTERY_ACTION_TRAIN:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "ins.intent.action.infer"

    .line 12
    .line 13
    sput-object v0, Lcom/samsung/android/wifi/intelligence/ins/spec/ConfigSpec$TestMode;->CUSTOM_BATTERY_ACTION_INFER:Ljava/lang/String;

    .line 14
    .line 15
    const/16 v0, 0x9

    .line 16
    .line 17
    sput v0, Lcom/samsung/android/wifi/intelligence/ins/spec/ConfigSpec$TestMode;->CUSTOM_BATTERY_VALUE_INFER:I

    .line 18
    .line 19
    const-string v0, "infer"

    .line 20
    .line 21
    sput-object v0, Lcom/samsung/android/wifi/intelligence/ins/spec/ConfigSpec$TestMode;->CUSTOM_EXTRA_INFER:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method
