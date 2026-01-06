.class public Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$EventType;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventType"
.end annotation


# static fields
.field public static final greylist BT_DISCOVER_STOPPED:I = 0x4

.field public static final greylist CONNECTION_CHANGED:I = 0x0

.field public static final greylist DATA_RECEIVED:I = 0x2

.field public static final greylist ERROR_RECEIVED:I = 0x1

.field public static final greylist FIRMWARE_UPDATED:I = 0xa

.field public static final greylist INFO_RECEIVED:I = 0x3


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
