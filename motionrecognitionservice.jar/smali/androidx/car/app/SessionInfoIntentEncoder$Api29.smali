.class Landroidx/car/app/SessionInfoIntentEncoder$Api29;
.super Ljava/lang/Object;
.source "SessionInfoIntentEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/SessionInfoIntentEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api29"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method static setIdentifier(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "identifier"    # Ljava/lang/String;

    .line 100
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    return-void
.end method
