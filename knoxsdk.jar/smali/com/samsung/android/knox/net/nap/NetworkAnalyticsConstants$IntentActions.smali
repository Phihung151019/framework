.class public Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants$IntentActions;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentActions"
.end annotation


# static fields
.field public static final greylist CONTAINER_REMOVAL_INTENT:Ljava/lang/String; = "enterprise.container.uninstalled"

.field public static final greylist INTENT_CONTAINER_ADMIN_CHANGED_ACTION:Ljava/lang/String; = "enterprise.container.admin.changed"

.field public static final greylist ULTRA_POWER_SAVING_MODE_PERMISSION:Ljava/lang/String; = "com.sec.android.emergencymode.permission.LAUNCH_EMERGENCYMODE_SERVICE"


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
