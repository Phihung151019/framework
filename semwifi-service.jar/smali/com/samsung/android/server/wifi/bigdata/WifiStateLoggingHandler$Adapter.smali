.class public abstract Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$Adapter;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation


# static fields
.field public static final L2_CONNECTED_AT:I = 0x2

.field public static final L3_CONNECTED_AT:I = 0x3

.field public static final MAX_INDEX:I = 0x4

.field public static final TRYING_TO_CONNECT:I = 0x1

.field public static final WIFI_ON_AT:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract getFirstConnectionReport()[J
.end method
