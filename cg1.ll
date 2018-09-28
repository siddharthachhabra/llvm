; ModuleID = 'cg.c'
source_filename = "cg.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@firstrow = internal unnamed_addr global i1 false, align 4
@lastrow = internal unnamed_addr global i1 false, align 4
@firstcol = internal unnamed_addr global i1 false, align 4
@lastcol = internal unnamed_addr global i1 false, align 4
@.str = private unnamed_addr constant [75 x i8] c"\0A\0A NAS Parallel Benchmarks 3.0 structured OpenMP C version - CG Benchmark\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" Size: %10d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" Iterations: %5d\0A\00", align 1
@naa = internal unnamed_addr global i1 false, align 4
@nzz = internal unnamed_addr global i1 false, align 4
@tran = internal global double 0.000000e+00, align 8
@amult = internal unnamed_addr global double 0.000000e+00, align 8
@a = internal global [2198001 x double] zeroinitializer, align 16
@colidx = internal global [2198001 x i32] zeroinitializer, align 16
@rowstr = internal global [14002 x i32] zeroinitializer, align 16
@arow = internal global [2198001 x i32] zeroinitializer, align 16
@acol = internal global [2198001 x i32] zeroinitializer, align 16
@aelt = internal global [2198001 x double] zeroinitializer, align 16
@v = internal global [14002 x double] zeroinitializer, align 16
@iv = internal global [28002 x i32] zeroinitializer, align 16
@x = internal global [14003 x double] zeroinitializer, align 16
@q = internal global [14003 x double] zeroinitializer, align 16
@z = internal global [14003 x double] zeroinitializer, align 16
@r = internal global [14003 x double] zeroinitializer, align 16
@p = internal global [14003 x double] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [51 x i8] c"   iteration           ||r||                 zeta\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"    %5d       %20.14e%20.13e\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c" Benchmark completed\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c" VERIFICATION SUCCESSFUL\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c" Zeta is    %20.12e\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c" Error is   %20.12e\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c" VERIFICATION FAILED\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c" Zeta                %20.12e\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c" The correct zeta is %20.12e\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"CG\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"          floating point\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"3.0 structured\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"27 Sep 2018\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"clang\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"-lm\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"-I../common\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"-O1 \00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"randdp\00", align 1
@conj_grad.callcount = internal unnamed_addr global i32 0, align 4
@.str.24 = private unnamed_addr constant [45 x i8] c"Space for matrix elements exceeded in makea\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"nnza, nzmax = %d, %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"iouter = %d\0A\00", align 1
@str = private unnamed_addr constant [74 x i8] c"\0A\0A NAS Parallel Benchmarks 3.0 structured OpenMP C version - CG Benchmark\00"
@str.27 = private unnamed_addr constant [21 x i8] c" Benchmark completed\00"
@str.28 = private unnamed_addr constant [21 x i8] c" VERIFICATION FAILED\00"
@str.29 = private unnamed_addr constant [25 x i8] c" VERIFICATION SUCCESSFUL\00"
@str.30 = private unnamed_addr constant [50 x i8] c"   iteration           ||r||                 zeta\00"
@str.31 = private unnamed_addr constant [44 x i8] c"Space for matrix elements exceeded in makea\00"
@str.32 = private unnamed_addr constant [44 x i8] c"Space for matrix elements exceeded in makea\00"

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8** nocapture readnone) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = bitcast double* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %4) #8
  store i1 true, i1* @firstrow, align 4
  store i1 true, i1* @lastrow, align 4
  store i1 true, i1* @firstcol, align 4
  store i1 true, i1* @lastcol, align 4
  %5 = tail call i32 @puts(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @str, i64 0, i64 0))
  %6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 14000)
  %7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 15)
  store i1 true, i1* @naa, align 4
  store i1 true, i1* @nzz, align 4
  store double 0x41B2B9B0A1000000, double* @tran, align 8, !tbaa !1
  store double 0x41D2309CE5400000, double* @amult, align 8, !tbaa !1
  %8 = tail call double @randlc(double* nonnull @tran, double 0x41D2309CE5400000) #8
  %9 = load i1, i1* @naa, align 4
  %10 = select i1 %9, i32 14000, i32 0
  %11 = load i1, i1* @nzz, align 4
  %12 = select i1 %11, i32 2198000, i32 0
  %13 = load i1, i1* @firstrow, align 4
  %14 = zext i1 %13 to i32
  %15 = load i1, i1* @lastrow, align 4
  %16 = select i1 %15, i32 14000, i32 0
  %17 = load i1, i1* @firstcol, align 4
  %18 = zext i1 %17 to i32
  %19 = load i1, i1* @lastcol, align 4
  %20 = select i1 %19, i32 14000, i32 0
  tail call fastcc void @makea(i32 %10, i32 %12, i32 %14, i32 %16, i32 %18, i32 %20)
  %21 = load i1, i1* @lastrow, align 4
  %22 = load i1, i1* @firstrow, align 4
  %23 = sext i1 %22 to i32
  %24 = select i1 %21, i32 14001, i32 1
  %25 = add nsw i32 %24, %23
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %28, label %29

; <label>:27:                                     ; preds = %38
  br label %28

; <label>:28:                                     ; preds = %27, %2
  br label %67

; <label>:29:                                     ; preds = %2
  %30 = load i1, i1* @lastrow, align 4
  %31 = load i1, i1* @firstrow, align 4
  %32 = sext i1 %31 to i64
  %33 = select i1 %30, i64 14001, i64 1
  %34 = add nsw i64 %33, %32
  %35 = load i1, i1* @firstcol, align 4
  %36 = sext i1 %35 to i32
  br label %40

; <label>:37:                                     ; preds = %52
  br label %38

; <label>:38:                                     ; preds = %37, %40
  %39 = icmp slt i64 %41, %34
  br i1 %39, label %40, label %27

; <label>:40:                                     ; preds = %38, %29
  %41 = phi i64 [ %44, %38 ], [ 1, %29 ]
  %42 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4, !tbaa !5
  %44 = add nuw nsw i64 %41, 1
  %45 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !5
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %38

; <label>:48:                                     ; preds = %40
  %49 = load i32, i32* %45, align 4, !tbaa !5
  %50 = sext i32 %43 to i64
  %51 = sext i32 %49 to i64
  br label %52

; <label>:52:                                     ; preds = %48, %52
  %53 = phi i64 [ %50, %48 ], [ %58, %52 ]
  %54 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4, !tbaa !5
  %56 = add i32 %55, 1
  %57 = add i32 %56, %36
  store i32 %57, i32* %54, align 4, !tbaa !5
  %58 = add nsw i64 %53, 1
  %59 = icmp slt i64 %58, %51
  br i1 %59, label %52, label %37

; <label>:60:                                     ; preds = %67
  %61 = load i1, i1* @lastcol, align 4
  %62 = load i1, i1* @firstcol, align 4
  %63 = sext i1 %62 to i32
  %64 = select i1 %61, i32 14001, i32 1
  %65 = add nsw i32 %64, %63
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %102, label %72

; <label>:67:                                     ; preds = %28, %67
  %68 = phi i64 [ %70, %67 ], [ 1, %28 ]
  %69 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %68
  store double 1.000000e+00, double* %69, align 8, !tbaa !1
  %70 = add nuw nsw i64 %68, 1
  %71 = icmp eq i64 %70, 14002
  br i1 %71, label %60, label %67

; <label>:72:                                     ; preds = %60
  %73 = load i1, i1* @lastcol, align 4
  %74 = load i1, i1* @firstcol, align 4
  %75 = sext i1 %74 to i32
  %76 = select i1 %73, i32 14001, i32 1
  %77 = add nsw i32 %76, %75
  %78 = icmp sgt i32 %77, 1
  %79 = select i1 %78, i32 %77, i32 1
  %80 = add nsw i32 %79, -1
  %81 = zext i32 %80 to i64
  %82 = shl nuw nsw i64 %81, 3
  %83 = add nuw nsw i64 %82, 8
  call void @llvm.memset.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @q, i64 0, i64 1) to i8*), i8 0, i64 %83, i32 8, i1 false)
  %84 = icmp sgt i32 %77, 1
  %85 = select i1 %84, i32 %77, i32 1
  %86 = add nsw i32 %85, -1
  %87 = zext i32 %86 to i64
  %88 = shl nuw nsw i64 %87, 3
  %89 = add nuw nsw i64 %88, 8
  call void @llvm.memset.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @z, i64 0, i64 1) to i8*), i8 0, i64 %89, i32 8, i1 false)
  %90 = icmp sgt i32 %77, 1
  %91 = select i1 %90, i32 %77, i32 1
  %92 = add nsw i32 %91, -1
  %93 = zext i32 %92 to i64
  %94 = shl nuw nsw i64 %93, 3
  %95 = add nuw nsw i64 %94, 8
  call void @llvm.memset.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @r, i64 0, i64 1) to i8*), i8 0, i64 %95, i32 8, i1 false)
  %96 = icmp sgt i32 %77, 1
  %97 = select i1 %96, i32 %77, i32 1
  %98 = add nsw i32 %97, -1
  %99 = zext i32 %98 to i64
  %100 = shl nuw nsw i64 %99, 3
  %101 = add nuw nsw i64 %100, 8
  call void @llvm.memset.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 1) to i8*), i8 0, i64 %101, i32 8, i1 false)
  br label %102

; <label>:102:                                    ; preds = %60, %72
  call fastcc void @conj_grad(double* nonnull %3)
  %103 = load i1, i1* @lastcol, align 4
  %104 = load i1, i1* @firstcol, align 4
  %105 = sext i1 %104 to i32
  %106 = select i1 %103, i32 14001, i32 1
  %107 = add nsw i32 %106, %105
  %108 = icmp slt i32 %107, 1
  br i1 %108, label %125, label %109

; <label>:109:                                    ; preds = %102
  %110 = load i1, i1* @lastcol, align 4
  %111 = load i1, i1* @firstcol, align 4
  %112 = sext i1 %111 to i64
  %113 = select i1 %110, i64 14001, i64 1
  %114 = add nsw i64 %113, %112
  br label %115

; <label>:115:                                    ; preds = %115, %109
  %116 = phi i64 [ %122, %115 ], [ 1, %109 ]
  %117 = phi double [ %121, %115 ], [ 0.000000e+00, %109 ]
  %118 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %116
  %119 = load double, double* %118, align 8, !tbaa !1
  %120 = fmul double %119, %119
  %121 = fadd double %117, %120
  %122 = add nuw nsw i64 %116, 1
  %123 = icmp slt i64 %116, %114
  br i1 %123, label %115, label %124

; <label>:124:                                    ; preds = %115
  br label %125

; <label>:125:                                    ; preds = %124, %102
  %126 = phi double [ 0.000000e+00, %102 ], [ %121, %124 ]
  %127 = tail call double @sqrt(double %126) #8
  %128 = fdiv double 1.000000e+00, %127
  %129 = load i1, i1* @lastcol, align 4
  %130 = load i1, i1* @firstcol, align 4
  %131 = sext i1 %130 to i32
  %132 = select i1 %129, i32 14001, i32 1
  %133 = add nsw i32 %132, %131
  %134 = icmp slt i32 %133, 1
  br i1 %134, label %150, label %135

; <label>:135:                                    ; preds = %125
  %136 = load i1, i1* @lastcol, align 4
  %137 = load i1, i1* @firstcol, align 4
  %138 = sext i1 %137 to i64
  %139 = select i1 %136, i64 14001, i64 1
  %140 = add nsw i64 %139, %138
  br label %141

; <label>:141:                                    ; preds = %141, %135
  %142 = phi i64 [ %147, %141 ], [ 1, %135 ]
  %143 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %142
  %144 = load double, double* %143, align 8, !tbaa !1
  %145 = fmul double %128, %144
  %146 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %142
  store double %145, double* %146, align 8, !tbaa !1
  %147 = add nuw nsw i64 %142, 1
  %148 = icmp slt i64 %142, %140
  br i1 %148, label %141, label %149

; <label>:149:                                    ; preds = %141
  br label %150

; <label>:150:                                    ; preds = %149, %125
  br label %151

; <label>:151:                                    ; preds = %150, %151
  %152 = phi i64 [ %154, %151 ], [ 1, %150 ]
  %153 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %152
  store double 1.000000e+00, double* %153, align 8, !tbaa !1
  %154 = add nuw nsw i64 %152, 1
  %155 = icmp eq i64 %154, 14002
  br i1 %155, label %156, label %151

; <label>:156:                                    ; preds = %151
  tail call void @timer_clear(i32 1) #8
  tail call void @timer_start(i32 1) #8
  br label %157

; <label>:157:                                    ; preds = %220, %156
  %158 = phi i32 [ 1, %156 ], [ %221, %220 ]
  call fastcc void @conj_grad(double* nonnull %3)
  %159 = load i1, i1* @lastcol, align 4
  %160 = load i1, i1* @firstcol, align 4
  %161 = sext i1 %160 to i32
  %162 = select i1 %159, i32 14001, i32 1
  %163 = add nsw i32 %162, %161
  %164 = icmp slt i32 %163, 1
  br i1 %164, label %186, label %165

; <label>:165:                                    ; preds = %157
  %166 = load i1, i1* @lastcol, align 4
  %167 = load i1, i1* @firstcol, align 4
  %168 = sext i1 %167 to i64
  %169 = select i1 %166, i64 14001, i64 1
  %170 = add nsw i64 %169, %168
  br label %171

; <label>:171:                                    ; preds = %171, %165
  %172 = phi i64 [ %183, %171 ], [ 1, %165 ]
  %173 = phi double [ %182, %171 ], [ 0.000000e+00, %165 ]
  %174 = phi double [ %180, %171 ], [ 0.000000e+00, %165 ]
  %175 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %172
  %176 = load double, double* %175, align 8, !tbaa !1
  %177 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %172
  %178 = load double, double* %177, align 8, !tbaa !1
  %179 = fmul double %176, %178
  %180 = fadd double %174, %179
  %181 = fmul double %178, %178
  %182 = fadd double %173, %181
  %183 = add nuw nsw i64 %172, 1
  %184 = icmp slt i64 %172, %170
  br i1 %184, label %171, label %185

; <label>:185:                                    ; preds = %171
  br label %186

; <label>:186:                                    ; preds = %185, %157
  %187 = phi double [ 0.000000e+00, %157 ], [ %180, %185 ]
  %188 = phi double [ 0.000000e+00, %157 ], [ %182, %185 ]
  %189 = tail call double @sqrt(double %188) #8
  %190 = fdiv double 1.000000e+00, %189
  %191 = fdiv double 1.000000e+00, %187
  %192 = fadd double %191, 2.000000e+01
  %193 = icmp eq i32 %158, 1
  br i1 %193, label %194, label %196

; <label>:194:                                    ; preds = %186
  %195 = tail call i32 @puts(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @str.30, i64 0, i64 0))
  br label %196

; <label>:196:                                    ; preds = %194, %186
  %197 = load double, double* %3, align 8, !tbaa !1
  %198 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %158, double %197, double %192)
  %199 = load i1, i1* @lastcol, align 4
  %200 = load i1, i1* @firstcol, align 4
  %201 = sext i1 %200 to i32
  %202 = select i1 %199, i32 14001, i32 1
  %203 = add nsw i32 %202, %201
  %204 = icmp slt i32 %203, 1
  br i1 %204, label %220, label %205

; <label>:205:                                    ; preds = %196
  %206 = load i1, i1* @lastcol, align 4
  %207 = load i1, i1* @firstcol, align 4
  %208 = sext i1 %207 to i64
  %209 = select i1 %206, i64 14001, i64 1
  %210 = add nsw i64 %209, %208
  br label %211

; <label>:211:                                    ; preds = %211, %205
  %212 = phi i64 [ %217, %211 ], [ 1, %205 ]
  %213 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %212
  %214 = load double, double* %213, align 8, !tbaa !1
  %215 = fmul double %190, %214
  %216 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %212
  store double %215, double* %216, align 8, !tbaa !1
  %217 = add nuw nsw i64 %212, 1
  %218 = icmp slt i64 %212, %210
  br i1 %218, label %211, label %219

; <label>:219:                                    ; preds = %211
  br label %220

; <label>:220:                                    ; preds = %219, %196
  %221 = add nuw nsw i32 %158, 1
  %222 = icmp eq i32 %221, 16
  br i1 %222, label %223, label %157

; <label>:223:                                    ; preds = %220
  tail call void @timer_stop(i32 1) #8
  %224 = tail call double @timer_read(i32 1) #8
  %225 = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @str.27, i64 0, i64 0))
  %226 = fadd double %192, 0xC031215715A1D8EC
  %227 = tail call double @fabs(double %226) #9
  %228 = fcmp ugt double %227, 1.000000e-10
  br i1 %228, label %233, label %229

; <label>:229:                                    ; preds = %223
  %230 = tail call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @str.29, i64 0, i64 0))
  %231 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), double %192)
  %232 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), double %226)
  br label %237

; <label>:233:                                    ; preds = %223
  %234 = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @str.28, i64 0, i64 0))
  %235 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), double %192)
  %236 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), double 0x4031215715A1D8EC)
  br label %237

; <label>:237:                                    ; preds = %229, %233
  %238 = phi i32 [ 1, %229 ], [ 0, %233 ]
  %239 = fcmp une double %224, 0.000000e+00
  br i1 %239, label %240, label %243

; <label>:240:                                    ; preds = %237
  %241 = fdiv double 1.496460e+09, %224
  %242 = fdiv double %241, 1.000000e+06
  br label %243

; <label>:243:                                    ; preds = %237, %240
  %244 = phi double [ %242, %240 ], [ 0.000000e+00, %237 ]
  tail call void @c_print_results(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8 signext 65, i32 14000, i32 0, i32 0, i32 15, i32 1, double %224, double %244, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 %238, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #8
  call void @llvm.lifetime.end(i64 8, i8* nonnull %4) #8
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

declare double @randlc(double*, double) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @makea(i32, i32, i32, i32, i32, i32) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %8) #8
  %9 = sitofp i32 %0 to double
  %10 = fdiv double 1.000000e+00, %9
  %11 = tail call double @pow(double 1.000000e-01, double %10) #8
  %12 = icmp slt i32 %0, 1
  br i1 %12, label %25, label %13

; <label>:13:                                     ; preds = %6
  %14 = sext i32 %0 to i64
  %15 = add nsw i64 %14, 1
  %16 = getelementptr [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %15
  %17 = bitcast i32* %16 to i8*
  %18 = add i32 %0, -1
  %19 = zext i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 2
  %21 = add nuw nsw i64 %20, 4
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 %21, i32 4, i1 false)
  %22 = sext i32 %0 to i64
  %23 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %22
  br label %29

; <label>:24:                                     ; preds = %86
  br label %25

; <label>:25:                                     ; preds = %24, %6
  %26 = phi i32 [ 0, %6 ], [ %87, %24 ]
  %27 = icmp sgt i32 %2, %3
  br i1 %27, label %115, label %28

; <label>:28:                                     ; preds = %25
  br label %91

; <label>:29:                                     ; preds = %86, %13
  %30 = phi i32 [ 0, %13 ], [ %87, %86 ]
  %31 = phi i32 [ 1, %13 ], [ %89, %86 ]
  %32 = phi double [ 1.000000e+00, %13 ], [ %88, %86 ]
  store i32 11, i32* %7, align 4, !tbaa !5
  tail call fastcc void @sprnvc(i32 %0, i32* %23)
  call fastcc void @vecset(i32* nonnull %7, i32 %31)
  %33 = load i32, i32* %7, align 4, !tbaa !5
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %86, label %35

; <label>:35:                                     ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 1
  %38 = sext i32 %36 to i64
  %39 = sext i32 %36 to i64
  br label %40

; <label>:40:                                     ; preds = %81, %35
  %41 = phi i64 [ %83, %81 ], [ 1, %35 ]
  %42 = phi i32 [ %82, %81 ], [ %30, %35 ]
  %43 = getelementptr inbounds [28002 x i32], [28002 x i32]* @iv, i64 0, i64 %41
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = icmp slt i32 %44, %4
  %46 = icmp sgt i32 %44, %5
  %47 = or i1 %45, %46
  br i1 %47, label %81, label %48

; <label>:48:                                     ; preds = %40
  %49 = getelementptr inbounds [14002 x double], [14002 x double]* @v, i64 0, i64 %41
  %50 = load double, double* %49, align 8, !tbaa !1
  %51 = fmul double %32, %50
  br i1 %37, label %81, label %52

; <label>:52:                                     ; preds = %48
  br label %53

; <label>:53:                                     ; preds = %52, %76
  %54 = phi i64 [ %78, %76 ], [ 1, %52 ]
  %55 = phi i32 [ %77, %76 ], [ %42, %52 ]
  %56 = getelementptr inbounds [28002 x i32], [28002 x i32]* @iv, i64 0, i64 %54
  %57 = load i32, i32* %56, align 4, !tbaa !5
  %58 = icmp slt i32 %57, %2
  %59 = icmp sgt i32 %57, %3
  %60 = or i1 %58, %59
  br i1 %60, label %76, label %61

; <label>:61:                                     ; preds = %53
  %62 = add nsw i32 %55, 1
  %63 = icmp slt i32 %55, %1
  br i1 %63, label %68, label %64

; <label>:64:                                     ; preds = %61
  %65 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @str.32, i64 0, i64 0))
  %66 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i32 %62, i32 %1)
  %67 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i32 %31)
  tail call void @exit(i32 1) #10
  unreachable

; <label>:68:                                     ; preds = %61
  %69 = sext i32 %62 to i64
  %70 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @acol, i64 0, i64 %69
  store i32 %44, i32* %70, align 4, !tbaa !5
  %71 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @arow, i64 0, i64 %69
  store i32 %57, i32* %71, align 4, !tbaa !5
  %72 = getelementptr inbounds [14002 x double], [14002 x double]* @v, i64 0, i64 %54
  %73 = load double, double* %72, align 8, !tbaa !1
  %74 = fmul double %51, %73
  %75 = getelementptr inbounds [2198001 x double], [2198001 x double]* @aelt, i64 0, i64 %69
  store double %74, double* %75, align 8, !tbaa !1
  br label %76

; <label>:76:                                     ; preds = %53, %68
  %77 = phi i32 [ %62, %68 ], [ %55, %53 ]
  %78 = add nuw nsw i64 %54, 1
  %79 = icmp slt i64 %54, %38
  br i1 %79, label %53, label %80

; <label>:80:                                     ; preds = %76
  br label %81

; <label>:81:                                     ; preds = %80, %48, %40
  %82 = phi i32 [ %42, %40 ], [ %42, %48 ], [ %77, %80 ]
  %83 = add nuw nsw i64 %41, 1
  %84 = icmp slt i64 %41, %39
  br i1 %84, label %40, label %85

; <label>:85:                                     ; preds = %81
  br label %86

; <label>:86:                                     ; preds = %85, %29
  %87 = phi i32 [ %30, %29 ], [ %82, %85 ]
  %88 = fmul double %11, %32
  %89 = add nuw nsw i32 %31, 1
  %90 = icmp slt i32 %31, %0
  br i1 %90, label %29, label %24

; <label>:91:                                     ; preds = %28, %110
  %92 = phi i32 [ %112, %110 ], [ %2, %28 ]
  %93 = phi i32 [ %111, %110 ], [ %26, %28 ]
  %94 = icmp slt i32 %92, %4
  %95 = icmp sgt i32 %92, %5
  %96 = or i1 %94, %95
  br i1 %96, label %110, label %97

; <label>:97:                                     ; preds = %91
  %98 = add nsw i32 %93, 1
  %99 = icmp slt i32 %93, %1
  br i1 %99, label %105, label %100

; <label>:100:                                    ; preds = %97
  %101 = add nsw i32 %92, %0
  %102 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @str.31, i64 0, i64 0))
  %103 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i32 %98, i32 %1)
  %104 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i32 %101)
  tail call void @exit(i32 1) #10
  unreachable

; <label>:105:                                    ; preds = %97
  %106 = sext i32 %98 to i64
  %107 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @acol, i64 0, i64 %106
  store i32 %92, i32* %107, align 4, !tbaa !5
  %108 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @arow, i64 0, i64 %106
  store i32 %92, i32* %108, align 4, !tbaa !5
  %109 = getelementptr inbounds [2198001 x double], [2198001 x double]* @aelt, i64 0, i64 %106
  store double -1.990000e+01, double* %109, align 8, !tbaa !1
  br label %110

; <label>:110:                                    ; preds = %91, %105
  %111 = phi i32 [ %98, %105 ], [ %93, %91 ]
  %112 = add nsw i32 %92, 1
  %113 = icmp slt i32 %92, %3
  br i1 %113, label %91, label %114

; <label>:114:                                    ; preds = %110
  br label %115

; <label>:115:                                    ; preds = %114, %25
  %116 = phi i32 [ %26, %25 ], [ %111, %114 ]
  %117 = sext i32 %0 to i64
  %118 = getelementptr inbounds [28002 x i32], [28002 x i32]* @iv, i64 0, i64 %117
  tail call fastcc void @sparse(i32 %0, i32 %2, i32 %3, i32* %118, i32 %116)
  call void @llvm.lifetime.end(i64 4, i8* nonnull %8) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @conj_grad(double* nocapture) unnamed_addr #0 {
  %2 = load i1, i1* @naa, align 4
  %3 = select i1 %2, i64 112008, i64 8
  call void @llvm.memset.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @q, i64 0, i64 1) to i8*), i8 0, i64 %3, i32 8, i1 false)
  %4 = select i1 %2, i64 112008, i64 8
  call void @llvm.memset.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @z, i64 0, i64 1) to i8*), i8 0, i64 %4, i32 8, i1 false)
  %5 = select i1 %2, i64 112008, i64 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @r, i64 0, i64 1) to i8*), i8* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @x, i64 0, i64 1) to i8*), i64 %5, i32 8, i1 false)
  %6 = select i1 %2, i64 112008, i64 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @p, i64 0, i64 1) to i8*), i8* bitcast (double* getelementptr inbounds ([14003 x double], [14003 x double]* @x, i64 0, i64 1) to i8*), i64 %6, i32 8, i1 false)
  %7 = load i1, i1* @lastcol, align 4
  %8 = load i1, i1* @firstcol, align 4
  %9 = sext i1 %8 to i32
  %10 = select i1 %7, i32 14001, i32 1
  %11 = add nsw i32 %10, %9
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %20, label %13

; <label>:13:                                     ; preds = %1
  %14 = load i1, i1* @lastcol, align 4
  %15 = load i1, i1* @firstcol, align 4
  %16 = sext i1 %15 to i64
  %17 = select i1 %14, i64 14001, i64 1
  %18 = add nsw i64 %17, %16
  br label %61

; <label>:19:                                     ; preds = %61
  br label %20

; <label>:20:                                     ; preds = %19, %1
  %21 = phi double [ 0.000000e+00, %1 ], [ %67, %19 ]
  %22 = load i1, i1* @lastrow, align 4
  %23 = load i1, i1* @firstrow, align 4
  %24 = sext i1 %23 to i32
  %25 = select i1 %22, i32 14001, i32 1
  %26 = add nsw i32 %25, %24
  %27 = icmp slt i32 %26, 1
  %28 = load i1, i1* @lastcol, align 4
  %29 = load i1, i1* @firstcol, align 4
  %30 = sext i1 %29 to i32
  %31 = select i1 %28, i32 14001, i32 1
  %32 = add nsw i32 %31, %30
  %33 = icmp slt i32 %32, 1
  %34 = sext i1 %29 to i32
  %35 = select i1 %28, i32 14001, i32 1
  %36 = add nsw i32 %35, %34
  %37 = icmp slt i32 %36, 1
  %38 = load i1, i1* @lastcol, align 4
  %39 = load i1, i1* @firstcol, align 4
  %40 = sext i1 %39 to i32
  %41 = select i1 %38, i32 14001, i32 1
  %42 = add nsw i32 %41, %40
  %43 = icmp slt i32 %42, 1
  %44 = sext i1 %39 to i64
  %45 = select i1 %38, i64 14001, i64 1
  %46 = add nsw i64 %45, %44
  %47 = load i1, i1* @lastcol, align 4
  %48 = load i1, i1* @firstcol, align 4
  %49 = sext i1 %48 to i64
  %50 = select i1 %47, i64 14001, i64 1
  %51 = add nsw i64 %50, %49
  %52 = sext i1 %48 to i64
  %53 = select i1 %47, i64 14001, i64 1
  %54 = add nsw i64 %53, %52
  %55 = load i1, i1* @lastrow, align 4
  %56 = load i1, i1* @firstrow, align 4
  %57 = sext i1 %56 to i64
  %58 = select i1 %55, i64 14001, i64 1
  %59 = add nsw i64 %58, %57
  %60 = load i32, i32* @conj_grad.callcount, align 4, !tbaa !5
  br label %70

; <label>:61:                                     ; preds = %61, %13
  %62 = phi i64 [ %68, %61 ], [ 1, %13 ]
  %63 = phi double [ %67, %61 ], [ 0.000000e+00, %13 ]
  %64 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %62
  %65 = load double, double* %64, align 8, !tbaa !1
  %66 = fmul double %65, %65
  %67 = fadd double %63, %66
  %68 = add nuw nsw i64 %62, 1
  %69 = icmp slt i64 %62, %18
  br i1 %69, label %61, label %19

; <label>:70:                                     ; preds = %173, %20
  %71 = phi i32 [ 1, %20 ], [ %174, %173 ]
  %72 = phi double [ %21, %20 ], [ %159, %173 ]
  br i1 %27, label %89, label %73

; <label>:73:                                     ; preds = %70
  br label %91

; <label>:74:                                     ; preds = %173
  %75 = add i32 %60, 25
  store i32 %75, i32* @conj_grad.callcount, align 4, !tbaa !5
  %76 = load i1, i1* @lastrow, align 4
  %77 = load i1, i1* @firstrow, align 4
  %78 = sext i1 %77 to i32
  %79 = select i1 %76, i32 14001, i32 1
  %80 = add nsw i32 %79, %78
  %81 = icmp slt i32 %80, 1
  br i1 %81, label %177, label %82

; <label>:82:                                     ; preds = %74
  %83 = load i1, i1* @lastrow, align 4
  %84 = load i1, i1* @firstrow, align 4
  %85 = sext i1 %84 to i64
  %86 = select i1 %83, i64 14001, i64 1
  %87 = add nsw i64 %86, %85
  br label %190

; <label>:88:                                     ; preds = %118
  br label %89

; <label>:89:                                     ; preds = %88, %70
  br i1 %33, label %134, label %90

; <label>:90:                                     ; preds = %89
  br label %122

; <label>:91:                                     ; preds = %73, %118
  %92 = phi i64 [ %95, %118 ], [ 1, %73 ]
  %93 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4, !tbaa !5
  %95 = add nuw nsw i64 %92, 1
  %96 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4, !tbaa !5
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %118

; <label>:99:                                     ; preds = %91
  %100 = load i32, i32* %96, align 4, !tbaa !5
  %101 = sext i32 %94 to i64
  %102 = sext i32 %100 to i64
  br label %103

; <label>:103:                                    ; preds = %99, %103
  %104 = phi i64 [ %101, %99 ], [ %115, %103 ]
  %105 = phi double [ 0.000000e+00, %99 ], [ %114, %103 ]
  %106 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %104
  %107 = load double, double* %106, align 8, !tbaa !1
  %108 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %104
  %109 = load i32, i32* %108, align 4, !tbaa !5
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %110
  %112 = load double, double* %111, align 8, !tbaa !1
  %113 = fmul double %107, %112
  %114 = fadd double %105, %113
  %115 = add nsw i64 %104, 1
  %116 = icmp slt i64 %115, %102
  br i1 %116, label %103, label %117

; <label>:117:                                    ; preds = %103
  br label %118

; <label>:118:                                    ; preds = %117, %91
  %119 = phi double [ 0.000000e+00, %91 ], [ %114, %117 ]
  %120 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %92
  store double %119, double* %120, align 8, !tbaa !1
  %121 = icmp slt i64 %92, %59
  br i1 %121, label %91, label %88

; <label>:122:                                    ; preds = %90, %122
  %123 = phi i64 [ %131, %122 ], [ 1, %90 ]
  %124 = phi double [ %130, %122 ], [ 0.000000e+00, %90 ]
  %125 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %123
  %126 = load double, double* %125, align 8, !tbaa !1
  %127 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %123
  %128 = load double, double* %127, align 8, !tbaa !1
  %129 = fmul double %126, %128
  %130 = fadd double %124, %129
  %131 = add nuw nsw i64 %123, 1
  %132 = icmp slt i64 %123, %54
  br i1 %132, label %122, label %133

; <label>:133:                                    ; preds = %122
  br label %134

; <label>:134:                                    ; preds = %133, %89
  %135 = phi double [ 0.000000e+00, %89 ], [ %130, %133 ]
  %136 = fdiv double %72, %135
  br i1 %37, label %158, label %137

; <label>:137:                                    ; preds = %134
  br label %138

; <label>:138:                                    ; preds = %137, %138
  %139 = phi i64 [ %155, %138 ], [ 1, %137 ]
  %140 = phi double [ %154, %138 ], [ 0.000000e+00, %137 ]
  %141 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %139
  %142 = load double, double* %141, align 8, !tbaa !1
  %143 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %139
  %144 = load double, double* %143, align 8, !tbaa !1
  %145 = fmul double %136, %144
  %146 = fadd double %142, %145
  store double %146, double* %141, align 8, !tbaa !1
  %147 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %139
  %148 = load double, double* %147, align 8, !tbaa !1
  %149 = getelementptr inbounds [14003 x double], [14003 x double]* @q, i64 0, i64 %139
  %150 = load double, double* %149, align 8, !tbaa !1
  %151 = fmul double %136, %150
  %152 = fsub double %148, %151
  store double %152, double* %147, align 8, !tbaa !1
  %153 = fmul double %152, %152
  %154 = fadd double %140, %153
  %155 = add nuw nsw i64 %139, 1
  %156 = icmp slt i64 %139, %51
  br i1 %156, label %138, label %157

; <label>:157:                                    ; preds = %138
  br label %158

; <label>:158:                                    ; preds = %157, %134
  %159 = phi double [ 0.000000e+00, %134 ], [ %154, %157 ]
  %160 = fdiv double %159, %72
  br i1 %43, label %173, label %161

; <label>:161:                                    ; preds = %158
  br label %162

; <label>:162:                                    ; preds = %161, %162
  %163 = phi i64 [ %170, %162 ], [ 1, %161 ]
  %164 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %163
  %165 = load double, double* %164, align 8, !tbaa !1
  %166 = getelementptr inbounds [14003 x double], [14003 x double]* @p, i64 0, i64 %163
  %167 = load double, double* %166, align 8, !tbaa !1
  %168 = fmul double %160, %167
  %169 = fadd double %165, %168
  store double %169, double* %166, align 8, !tbaa !1
  %170 = add nuw nsw i64 %163, 1
  %171 = icmp slt i64 %163, %46
  br i1 %171, label %162, label %172

; <label>:172:                                    ; preds = %162
  br label %173

; <label>:173:                                    ; preds = %172, %158
  %174 = add nuw nsw i32 %71, 1
  %175 = icmp eq i32 %174, 26
  br i1 %175, label %74, label %70

; <label>:176:                                    ; preds = %217
  br label %177

; <label>:177:                                    ; preds = %176, %74
  %178 = load i1, i1* @lastcol, align 4
  %179 = load i1, i1* @firstcol, align 4
  %180 = sext i1 %179 to i32
  %181 = select i1 %178, i32 14001, i32 1
  %182 = add nsw i32 %181, %180
  %183 = icmp slt i32 %182, 1
  br i1 %183, label %234, label %184

; <label>:184:                                    ; preds = %177
  %185 = load i1, i1* @lastcol, align 4
  %186 = load i1, i1* @firstcol, align 4
  %187 = sext i1 %186 to i64
  %188 = select i1 %185, i64 14001, i64 1
  %189 = add nsw i64 %188, %187
  br label %221

; <label>:190:                                    ; preds = %217, %82
  %191 = phi i64 [ %194, %217 ], [ 1, %82 ]
  %192 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %191
  %193 = load i32, i32* %192, align 4, !tbaa !5
  %194 = add nuw nsw i64 %191, 1
  %195 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4, !tbaa !5
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %198, label %217

; <label>:198:                                    ; preds = %190
  %199 = load i32, i32* %195, align 4, !tbaa !5
  %200 = sext i32 %193 to i64
  %201 = sext i32 %199 to i64
  br label %202

; <label>:202:                                    ; preds = %198, %202
  %203 = phi i64 [ %200, %198 ], [ %214, %202 ]
  %204 = phi double [ 0.000000e+00, %198 ], [ %213, %202 ]
  %205 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %203
  %206 = load double, double* %205, align 8, !tbaa !1
  %207 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %203
  %208 = load i32, i32* %207, align 4, !tbaa !5
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [14003 x double], [14003 x double]* @z, i64 0, i64 %209
  %211 = load double, double* %210, align 8, !tbaa !1
  %212 = fmul double %206, %211
  %213 = fadd double %204, %212
  %214 = add nsw i64 %203, 1
  %215 = icmp slt i64 %214, %201
  br i1 %215, label %202, label %216

; <label>:216:                                    ; preds = %202
  br label %217

; <label>:217:                                    ; preds = %216, %190
  %218 = phi double [ 0.000000e+00, %190 ], [ %213, %216 ]
  %219 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %191
  store double %218, double* %219, align 8, !tbaa !1
  %220 = icmp slt i64 %191, %87
  br i1 %220, label %190, label %176

; <label>:221:                                    ; preds = %221, %184
  %222 = phi i64 [ %231, %221 ], [ 1, %184 ]
  %223 = phi double [ %230, %221 ], [ 0.000000e+00, %184 ]
  %224 = getelementptr inbounds [14003 x double], [14003 x double]* @x, i64 0, i64 %222
  %225 = load double, double* %224, align 8, !tbaa !1
  %226 = getelementptr inbounds [14003 x double], [14003 x double]* @r, i64 0, i64 %222
  %227 = load double, double* %226, align 8, !tbaa !1
  %228 = fsub double %225, %227
  %229 = fmul double %228, %228
  %230 = fadd double %223, %229
  %231 = add nuw nsw i64 %222, 1
  %232 = icmp slt i64 %222, %189
  br i1 %232, label %221, label %233

; <label>:233:                                    ; preds = %221
  br label %234

; <label>:234:                                    ; preds = %233, %177
  %235 = phi double [ 0.000000e+00, %177 ], [ %230, %233 ]
  %236 = tail call double @sqrt(double %235) #8
  store double %236, double* %0, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) local_unnamed_addr #2

declare void @timer_clear(i32) local_unnamed_addr #3

declare void @timer_start(i32) local_unnamed_addr #3

declare void @timer_stop(i32) local_unnamed_addr #3

declare double @timer_read(i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare double @fabs(double) local_unnamed_addr #4

declare void @c_print_results(i8*, i8 signext, i32, i32, i32, i32, i32, double, double, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare double @pow(double, double) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @sprnvc(i32, i32* nocapture) unnamed_addr #0 {
  br label %3

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i32 [ 1, %2 ], [ %5, %3 ]
  %5 = shl nsw i32 %4, 1
  %6 = icmp slt i32 %5, %0
  br i1 %6, label %3, label %7

; <label>:7:                                      ; preds = %3
  br label %8

; <label>:8:                                      ; preds = %7, %30
  %9 = phi i64 [ %31, %30 ], [ 0, %7 ]
  br label %16

; <label>:10:                                     ; preds = %30
  %11 = trunc i64 %31 to i32
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %45, label %13

; <label>:13:                                     ; preds = %10
  %14 = add i64 %9, 2
  %15 = and i64 %14, 4294967295
  br label %36

; <label>:16:                                     ; preds = %29, %8
  %17 = load double, double* @amult, align 8, !tbaa !1
  %18 = tail call double @randlc(double* nonnull @tran, double %17) #8
  %19 = load double, double* @amult, align 8, !tbaa !1
  %20 = tail call double @randlc(double* nonnull @tran, double %19) #8
  %21 = tail call fastcc i32 @icnvrt(double %20, i32 %5)
  %22 = add nsw i32 %21, 1
  %23 = icmp slt i32 %21, %0
  br i1 %23, label %24, label %29

; <label>:24:                                     ; preds = %16
  %25 = sext i32 %22 to i64
  %26 = getelementptr inbounds i32, i32* %1, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

; <label>:29:                                     ; preds = %24, %16
  br label %16

; <label>:30:                                     ; preds = %24
  store i32 1, i32* %26, align 4, !tbaa !5
  %31 = add nuw nsw i64 %9, 1
  %32 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %31
  store i32 %22, i32* %32, align 4, !tbaa !5
  %33 = getelementptr inbounds [14002 x double], [14002 x double]* @v, i64 0, i64 %31
  store double %18, double* %33, align 8, !tbaa !1
  %34 = getelementptr inbounds [28002 x i32], [28002 x i32]* @iv, i64 0, i64 %31
  store i32 %22, i32* %34, align 4, !tbaa !5
  %35 = icmp slt i64 %31, 11
  br i1 %35, label %8, label %10

; <label>:36:                                     ; preds = %36, %13
  %37 = phi i64 [ 1, %13 ], [ %42, %36 ]
  %38 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !5
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %1, i64 %40
  store i32 0, i32* %41, align 4, !tbaa !5
  %42 = add nuw nsw i64 %37, 1
  %43 = icmp eq i64 %42, %15
  br i1 %43, label %44, label %36

; <label>:44:                                     ; preds = %36
  br label %45

; <label>:45:                                     ; preds = %44, %10
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @vecset(i32* nocapture, i32) unnamed_addr #5 {
  %3 = load i32, i32* %0, align 4, !tbaa !5
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %22, label %5

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* %0, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  br label %8

; <label>:8:                                      ; preds = %16, %5
  %9 = phi i64 [ %18, %16 ], [ 1, %5 ]
  %10 = phi i32 [ %17, %16 ], [ 0, %5 ]
  %11 = getelementptr inbounds [28002 x i32], [28002 x i32]* @iv, i64 0, i64 %9
  %12 = load i32, i32* %11, align 4, !tbaa !5
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds [14002 x double], [14002 x double]* @v, i64 0, i64 %9
  store double 5.000000e-01, double* %15, align 8, !tbaa !1
  br label %16

; <label>:16:                                     ; preds = %8, %14
  %17 = phi i32 [ 1, %14 ], [ %10, %8 ]
  %18 = add nuw nsw i64 %9, 1
  %19 = icmp slt i64 %9, %7
  br i1 %19, label %8, label %20

; <label>:20:                                     ; preds = %16
  %21 = icmp eq i32 %17, 0
  br i1 %21, label %22, label %29

; <label>:22:                                     ; preds = %2, %20
  %23 = phi i32 [ %6, %20 ], [ %3, %2 ]
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %0, align 4, !tbaa !5
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [14002 x double], [14002 x double]* @v, i64 0, i64 %25
  store double 5.000000e-01, double* %26, align 8, !tbaa !1
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds [28002 x i32], [28002 x i32]* @iv, i64 0, i64 %27
  store i32 %1, i32* %28, align 4, !tbaa !5
  br label %29

; <label>:29:                                     ; preds = %22, %20
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #6

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @sparse(i32, i32, i32, i32* nocapture, i32) unnamed_addr #5 {
  %6 = sub nsw i32 %2, %1
  %7 = add nsw i32 %6, 1
  %8 = icmp slt i32 %0, 1
  br i1 %8, label %17, label %9

; <label>:9:                                      ; preds = %5
  %10 = add i32 %0, -1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 2
  %13 = add nuw nsw i64 %12, 4
  call void @llvm.memset.p0i8.i64(i8* bitcast (i32* getelementptr inbounds ([14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 1) to i8*), i8 0, i64 %13, i32 4, i1 false)
  %14 = zext i32 %10 to i64
  %15 = shl nuw nsw i64 %14, 2
  %16 = add nuw nsw i64 %15, 4
  call void @llvm.memset.p0i8.i64(i8* bitcast (i32* getelementptr inbounds ([28002 x i32], [28002 x i32]* @iv, i64 0, i64 1) to i8*), i8 0, i64 %16, i32 4, i1 false)
  br label %17

; <label>:17:                                     ; preds = %9, %5
  %18 = add nsw i32 %0, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %19
  store i32 0, i32* %20, align 4, !tbaa !5
  %21 = icmp slt i32 %4, 1
  br i1 %21, label %38, label %22

; <label>:22:                                     ; preds = %17
  %23 = sub i32 2, %1
  %24 = add i32 %4, 1
  %25 = zext i32 %24 to i64
  br label %26

; <label>:26:                                     ; preds = %26, %22
  %27 = phi i64 [ %35, %26 ], [ 1, %22 ]
  %28 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @arow, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !5
  %30 = add i32 %23, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !5
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4, !tbaa !5
  %35 = add nuw nsw i64 %27, 1
  %36 = icmp eq i64 %35, %25
  br i1 %36, label %37, label %26

; <label>:37:                                     ; preds = %26
  br label %38

; <label>:38:                                     ; preds = %37, %17
  store i32 1, i32* getelementptr inbounds ([14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 1), align 4, !tbaa !5
  %39 = icmp slt i32 %6, 0
  br i1 %39, label %72, label %40

; <label>:40:                                     ; preds = %38
  %41 = add nsw i32 %6, 2
  %42 = sext i32 %41 to i64
  %43 = load i32, i32* getelementptr inbounds ([14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 1), align 4
  br label %48

; <label>:44:                                     ; preds = %48
  %45 = icmp slt i32 %6, 0
  br i1 %45, label %72, label %46

; <label>:46:                                     ; preds = %44
  %47 = zext i32 %7 to i64
  br label %78

; <label>:48:                                     ; preds = %40, %48
  %49 = phi i32 [ %43, %40 ], [ %53, %48 ]
  %50 = phi i64 [ 2, %40 ], [ %54, %48 ]
  %51 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4, !tbaa !5
  %53 = add nsw i32 %49, %52
  store i32 %53, i32* %51, align 4, !tbaa !5
  %54 = add nuw nsw i64 %50, 1
  %55 = icmp slt i64 %50, %42
  br i1 %55, label %48, label %44

; <label>:56:                                     ; preds = %78
  %57 = load i32, i32* %83, align 4, !tbaa !5
  %58 = sext i32 %81 to i64
  %59 = getelementptr [2198001 x double], [2198001 x double]* @a, i64 0, i64 %58
  %60 = bitcast double* %59 to i8*
  %61 = add i32 %81, 1
  %62 = icmp sgt i32 %57, %61
  %63 = select i1 %62, i32 %57, i32 %61
  %64 = add i32 %63, -1
  %65 = sub i32 %64, %81
  %66 = zext i32 %65 to i64
  %67 = shl nuw nsw i64 %66, 3
  %68 = add nuw nsw i64 %67, 8
  call void @llvm.memset.p0i8.i64(i8* %60, i8 0, i64 %68, i32 8, i1 false)
  br label %69

; <label>:69:                                     ; preds = %56, %78
  %70 = icmp eq i64 %82, %47
  br i1 %70, label %71, label %78

; <label>:71:                                     ; preds = %69
  br label %72

; <label>:72:                                     ; preds = %71, %38, %44
  %73 = icmp slt i32 %4, 1
  br i1 %73, label %87, label %74

; <label>:74:                                     ; preds = %72
  %75 = sub i32 1, %1
  %76 = add i32 %4, 1
  %77 = zext i32 %76 to i64
  br label %91

; <label>:78:                                     ; preds = %46, %69
  %79 = phi i64 [ %82, %69 ], [ 0, %46 ]
  %80 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4, !tbaa !5
  %82 = add nuw nsw i64 %79, 1
  %83 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4, !tbaa !5
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %56, label %69

; <label>:86:                                     ; preds = %91
  br label %87

; <label>:87:                                     ; preds = %86, %72
  %88 = icmp sgt i32 %6, -1
  br i1 %88, label %89, label %121

; <label>:89:                                     ; preds = %87
  %90 = sext i32 %7 to i64
  br label %112

; <label>:91:                                     ; preds = %91, %74
  %92 = phi i64 [ %110, %91 ], [ 1, %74 ]
  %93 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @arow, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4, !tbaa !5
  %95 = add i32 %75, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4, !tbaa !5
  %99 = getelementptr inbounds [2198001 x double], [2198001 x double]* @aelt, i64 0, i64 %92
  %100 = bitcast double* %99 to i64*
  %101 = load i64, i64* %100, align 8, !tbaa !1
  %102 = sext i32 %98 to i64
  %103 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %102
  %104 = bitcast double* %103 to i64*
  store i64 %101, i64* %104, align 8, !tbaa !1
  %105 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @acol, i64 0, i64 %92
  %106 = load i32, i32* %105, align 4, !tbaa !5
  %107 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %102
  store i32 %106, i32* %107, align 4, !tbaa !5
  %108 = load i32, i32* %97, align 4, !tbaa !5
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %97, align 4, !tbaa !5
  %110 = add nuw nsw i64 %92, 1
  %111 = icmp eq i64 %110, %77
  br i1 %111, label %86, label %91

; <label>:112:                                    ; preds = %89, %112
  %113 = phi i64 [ %90, %89 ], [ %118, %112 ]
  %114 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4, !tbaa !5
  %116 = add nsw i64 %113, 1
  %117 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %116
  store i32 %115, i32* %117, align 4, !tbaa !5
  %118 = add nsw i64 %113, -1
  %119 = icmp sgt i64 %113, 1
  br i1 %119, label %112, label %120

; <label>:120:                                    ; preds = %112
  br label %121

; <label>:121:                                    ; preds = %120, %87
  store i32 1, i32* getelementptr inbounds ([14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 1), align 4, !tbaa !5
  %122 = icmp slt i32 %0, 1
  br i1 %122, label %131, label %123

; <label>:123:                                    ; preds = %121
  %124 = add i32 %0, -1
  %125 = zext i32 %124 to i64
  %126 = shl nuw nsw i64 %125, 3
  %127 = add nuw nsw i64 %126, 8
  call void @llvm.memset.p0i8.i64(i8* bitcast (double* getelementptr inbounds ([14002 x double], [14002 x double]* @v, i64 0, i64 1) to i8*), i8 0, i64 %127, i32 8, i1 false)
  %128 = zext i32 %124 to i64
  %129 = shl nuw nsw i64 %128, 2
  %130 = add nuw nsw i64 %129, 4
  call void @llvm.memset.p0i8.i64(i8* bitcast (i32* getelementptr inbounds ([28002 x i32], [28002 x i32]* @iv, i64 0, i64 1) to i8*), i8 0, i64 %130, i32 4, i1 false)
  br label %131

; <label>:131:                                    ; preds = %123, %121
  %132 = icmp slt i32 %6, 0
  br i1 %132, label %205, label %133

; <label>:133:                                    ; preds = %131
  %134 = load i32, i32* getelementptr inbounds ([14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 1), align 4, !tbaa !5
  %135 = add i32 %2, 2
  %136 = sub i32 %135, %1
  %137 = zext i32 %136 to i64
  br label %138

; <label>:138:                                    ; preds = %133, %199
  %139 = phi i64 [ 1, %133 ], [ %142, %199 ]
  %140 = phi i32 [ 0, %133 ], [ %200, %199 ]
  %141 = phi i32 [ %134, %133 ], [ %201, %199 ]
  %142 = add nuw nsw i64 %139, 1
  %143 = getelementptr inbounds [14002 x i32], [14002 x i32]* @rowstr, i64 0, i64 %142
  %144 = load i32, i32* %143, align 4, !tbaa !5
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %199

; <label>:146:                                    ; preds = %138
  %147 = load i32, i32* %143, align 4, !tbaa !5
  %148 = sext i32 %141 to i64
  %149 = sext i32 %147 to i64
  br label %155

; <label>:150:                                    ; preds = %175
  %151 = icmp slt i32 %176, 1
  br i1 %151, label %199, label %152

; <label>:152:                                    ; preds = %150
  %153 = add i32 %176, 1
  %154 = zext i32 %153 to i64
  br label %179

; <label>:155:                                    ; preds = %146, %175
  %156 = phi i64 [ %148, %146 ], [ %177, %175 ]
  %157 = phi i32 [ 0, %146 ], [ %176, %175 ]
  %158 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %156
  %159 = load i32, i32* %158, align 4, !tbaa !5
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [14002 x double], [14002 x double]* @v, i64 0, i64 %160
  %162 = load double, double* %161, align 8, !tbaa !1
  %163 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %156
  %164 = load double, double* %163, align 8, !tbaa !1
  %165 = fadd double %162, %164
  store double %165, double* %161, align 8, !tbaa !1
  %166 = getelementptr inbounds [28002 x i32], [28002 x i32]* @iv, i64 0, i64 %160
  %167 = load i32, i32* %166, align 4, !tbaa !5
  %168 = icmp eq i32 %167, 0
  %169 = fcmp une double %165, 0.000000e+00
  %170 = and i1 %169, %168
  br i1 %170, label %171, label %175

; <label>:171:                                    ; preds = %155
  store i32 1, i32* %166, align 4, !tbaa !5
  %172 = add nsw i32 %157, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %3, i64 %173
  store i32 %159, i32* %174, align 4, !tbaa !5
  br label %175

; <label>:175:                                    ; preds = %155, %171
  %176 = phi i32 [ %172, %171 ], [ %157, %155 ]
  %177 = add nsw i64 %156, 1
  %178 = icmp slt i64 %177, %149
  br i1 %178, label %155, label %150

; <label>:179:                                    ; preds = %194, %152
  %180 = phi i64 [ 1, %152 ], [ %196, %194 ]
  %181 = phi i32 [ %140, %152 ], [ %195, %194 ]
  %182 = getelementptr inbounds i32, i32* %3, i64 %180
  %183 = load i32, i32* %182, align 4, !tbaa !5
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [28002 x i32], [28002 x i32]* @iv, i64 0, i64 %184
  store i32 0, i32* %185, align 4, !tbaa !5
  %186 = getelementptr inbounds [14002 x double], [14002 x double]* @v, i64 0, i64 %184
  %187 = load double, double* %186, align 8, !tbaa !1
  store double 0.000000e+00, double* %186, align 8, !tbaa !1
  %188 = fcmp une double %187, 0.000000e+00
  br i1 %188, label %189, label %194

; <label>:189:                                    ; preds = %179
  %190 = add nsw i32 %181, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [2198001 x double], [2198001 x double]* @a, i64 0, i64 %191
  store double %187, double* %192, align 8, !tbaa !1
  %193 = getelementptr inbounds [2198001 x i32], [2198001 x i32]* @colidx, i64 0, i64 %191
  store i32 %183, i32* %193, align 4, !tbaa !5
  br label %194

; <label>:194:                                    ; preds = %179, %189
  %195 = phi i32 [ %190, %189 ], [ %181, %179 ]
  %196 = add nuw nsw i64 %180, 1
  %197 = icmp eq i64 %196, %154
  br i1 %197, label %198, label %179

; <label>:198:                                    ; preds = %194
  br label %199

; <label>:199:                                    ; preds = %198, %138, %150
  %200 = phi i32 [ %140, %150 ], [ %140, %138 ], [ %195, %198 ]
  %201 = load i32, i32* %143, align 4, !tbaa !5
  %202 = add nsw i32 %134, %200
  store i32 %202, i32* %143, align 4, !tbaa !5
  %203 = icmp eq i64 %142, %137
  br i1 %203, label %204, label %138

; <label>:204:                                    ; preds = %199
  br label %205

; <label>:205:                                    ; preds = %204, %131
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define internal fastcc i32 @icnvrt(double, i32) unnamed_addr #7 {
  %3 = sitofp i32 %1 to double
  %4 = fmul double %3, %0
  %5 = fptosi double %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"double", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
