.class public Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants$BroadcastActions;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastActions"
.end annotation


# static fields
.field public static final greylist ACTION_NPA_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.NPA_STATUS"

.field public static final greylist EXTRA_PROFILE_NAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PROFILE_NAME"

.field public static final greylist EXTRA_REGISTRATION_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.REGISTRATION_STATUS"

.field public static final greylist PROFILE_REGISTERED:I = 0x0

.field public static final greylist PROFILE_UNREGISTERED:I = 0x1


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
