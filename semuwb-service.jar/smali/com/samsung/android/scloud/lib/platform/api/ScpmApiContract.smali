.class interface abstract Lcom/samsung/android/scloud/lib/platform/api/ScpmApiContract;
.super Ljava/lang/Object;
.source "ScpmApiContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scloud/lib/platform/api/ScpmApiContract$Method;,
        Lcom/samsung/android/scloud/lib/platform/api/ScpmApiContract$Key;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.scpm.policy"

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const-string v0, "content://com.samsung.android.scpm.policy/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/scloud/lib/platform/api/ScpmApiContract;->URI:Landroid/net/Uri;

    return-void
.end method
