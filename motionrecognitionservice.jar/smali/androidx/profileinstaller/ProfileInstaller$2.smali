.class Landroidx/profileinstaller/ProfileInstaller$2;
.super Ljava/lang/Object;
.source "ProfileInstaller.java"

# interfaces
.implements Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/profileinstaller/ProfileInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "ProfileInstaller"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiagnosticReceived(ILjava/lang/Object;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 127
    const-string v0, ""

    .line 128
    .local v0, "msg":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 142
    :pswitch_0
    const-string v0, "DIAGNOSTIC_PROFILE_IS_COMPRESSED"

    goto :goto_0

    .line 139
    :pswitch_1
    const-string v0, "DIAGNOSTIC_REF_PROFILE_DOES_NOT_EXIST"

    .line 140
    goto :goto_0

    .line 136
    :pswitch_2
    const-string v0, "DIAGNOSTIC_REF_PROFILE_EXISTS"

    .line 137
    goto :goto_0

    .line 133
    :pswitch_3
    const-string v0, "DIAGNOSTIC_CURRENT_PROFILE_DOES_NOT_EXIST"

    .line 134
    goto :goto_0

    .line 130
    :pswitch_4
    const-string v0, "DIAGNOSTIC_CURRENT_PROFILE_EXISTS"

    .line 131
    nop

    .line 145
    :goto_0
    const-string v1, "ProfileInstaller"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResultReceived(ILjava/lang/Object;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 150
    const-string v0, ""

    .line 151
    .local v0, "msg":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 170
    :pswitch_1
    const-string v0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    goto :goto_0

    .line 168
    :pswitch_2
    const-string v0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

    .line 169
    goto :goto_0

    .line 166
    :pswitch_3
    const-string v0, "RESULT_PARSE_EXCEPTION"

    .line 167
    goto :goto_0

    .line 164
    :pswitch_4
    const-string v0, "RESULT_IO_EXCEPTION"

    .line 165
    goto :goto_0

    .line 162
    :pswitch_5
    const-string v0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    .line 163
    goto :goto_0

    .line 160
    :pswitch_6
    const-string v0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

    .line 161
    goto :goto_0

    .line 158
    :pswitch_7
    const-string v0, "RESULT_NOT_WRITABLE"

    .line 159
    goto :goto_0

    .line 156
    :pswitch_8
    const-string v0, "RESULT_UNSUPPORTED_ART_VERSION"

    .line 157
    goto :goto_0

    .line 154
    :pswitch_9
    const-string v0, "RESULT_ALREADY_INSTALLED"

    .line 155
    goto :goto_0

    .line 152
    :pswitch_a
    const-string v0, "RESULT_INSTALL_SUCCESS"

    .line 153
    nop

    .line 174
    :goto_0
    const-string v1, "ProfileInstaller"

    packed-switch p1, :pswitch_data_1

    .line 181
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 178
    :pswitch_b
    move-object v2, p2

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    nop

    .line 184
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method
