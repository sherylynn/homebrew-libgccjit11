#version="28.0.91"
version="11.2.0"
url="https://github.com/gcc-mirror/gcc/archive/refs/tags/releases/gcc-"${version}".tar.gz"
fileName=libgccjit
FormulaName=libgccjit11
curl -o ${fileName}.tar.gz -L ${url}
sha256=$(openssl dgst -sha256 ${fileName}.tar.gz)
echo ${sha256}
sha256_string=${sha256##*= }
echo ${sha256_string}
rm ${fileName}.tar.gz
vi ./Formula/${FormulaName}.rb -c '/version' -c 'normal ddOversion ""' -c "normal i${version}" -c 'wq!'
vi ./Formula/${FormulaName}.rb -c '/sha256' -c 'normal ddOsha256 ""' -c "normal i${sha256_string}" -c 'wq!'
