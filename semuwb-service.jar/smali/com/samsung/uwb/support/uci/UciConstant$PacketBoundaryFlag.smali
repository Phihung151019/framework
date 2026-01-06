.class public Lcom/samsung/uwb/support/uci/UciConstant$PacketBoundaryFlag;
.super Ljava/lang/Object;
.source "UciConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/uwb/support/uci/UciConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PacketBoundaryFlag"
.end annotation


# static fields
.field public static final COMPLETED_PACKET:B = 0x0t

.field public static final SEGMENTED_PACKET:B = 0x1t

.field public static values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    const/4 v0, 0x0

    const/4 v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/uwb/support/uci/UciConstant$PacketBoundaryFlag;->values:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
