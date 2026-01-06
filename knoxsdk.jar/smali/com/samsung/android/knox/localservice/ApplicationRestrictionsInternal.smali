.class public abstract Lcom/samsung/android/knox/localservice/ApplicationRestrictionsInternal;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist getApplicationRestrictionsInternal(Ljava/lang/String;I)Landroid/os/Bundle;
.end method

.method public abstract blacklist sendBroadcastAsUserInternal(Ljava/lang/String;I)V
.end method

.method public abstract blacklist setApplicationRestrictionsInternal(Ljava/lang/String;Landroid/os/Bundle;IZLcom/samsung/android/knox/appconfig/IApplicationRestrictionsResultCallback;)V
.end method

.method public abstract blacklist setKeyedAppStatesReport(Ljava/lang/String;Landroid/os/Bundle;I)V
.end method
