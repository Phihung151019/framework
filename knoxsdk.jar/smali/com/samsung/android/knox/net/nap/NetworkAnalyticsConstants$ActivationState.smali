.class public Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants$ActivationState;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivationState"
.end annotation


# static fields
.field public static final greylist PROFILE_ACTIVATED:I = 0x1

.field public static final greylist PROFILE_INTERVAL_VALUE:Ljava/lang/String; = "interval_value"

.field public static final greylist PROFILE_NOT_ACTIVATED:I = 0x0

.field public static final greylist PROFILE_RECORD_TYPE:Ljava/lang/String; = "record_type"

.field public static final greylist RECORD_TYPE_ALL:I = 0x0

.field public static final greylist RECORD_TYPE_START:I = 0x1

.field public static final greylist RECORD_TYPE_STOP:I = 0x2


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
