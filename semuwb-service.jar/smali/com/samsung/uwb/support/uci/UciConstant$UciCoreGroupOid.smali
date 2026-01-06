.class public Lcom/samsung/uwb/support/uci/UciConstant$UciCoreGroupOid;
.super Ljava/lang/Object;
.source "UciConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/uwb/support/uci/UciConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UciCoreGroupOid"
.end annotation


# static fields
.field public static final CORE_DEVICE_RESET:B = 0x0t

.field public static final CORE_DEVICE_STATUS:B = 0x1t

.field public static final CORE_GENERIC_ERROR_NTF:B = 0x7t

.field public static final CORE_GET_CAPS_INFO:B = 0x3t

.field public static final CORE_GET_CONFIG_CMD:B = 0x5t

.field public static final CORE_GET_DEVICE_INFO:B = 0x2t

.field public static final CORE_QUERY_UWBS_TIMESTAMP:B = 0x8t

.field public static final CORE_SET_CONFIG:B = 0x4t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
